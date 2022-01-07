
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct usbnet {TYPE_4__* net; scalar_t__* data; } ;
struct usb_interface {int dummy; } ;
struct smsc95xx_priv {int features; int wolopts; int carrier_check; scalar_t__ suspend_flags; } ;
struct TYPE_7__ {scalar_t__ event; } ;
typedef TYPE_1__ pm_message_t ;
typedef int offset ;
typedef int crc ;
typedef int command ;
struct TYPE_8__ {int const* dev_addr; } ;


 int CARRIER_CHECK_DELAY ;
 int ENOMEM ;
 int ETH_ALEN ;
 int FEATURE_8_WAKEUP_FILTERS ;
 int FEATURE_REMOTE_WAKEUP ;
 int GFP_KERNEL ;
 int LAN9500A_WUFF_NUM ;
 int LAN9500_WUFF_NUM ;
 int PHY_INT_MASK_ANEG_COMP_ ;
 int PHY_INT_MASK_LINK_DOWN_ ;
 scalar_t__ PMSG_IS_AUTO (TYPE_1__) ;
 int PM_CTL_ED_EN_ ;
 int PM_CTL_WOL_EN_ ;
 int PM_CTRL ;
 scalar_t__ PM_EVENT_AUTO_SUSPEND ;
 int SUPPORTED_WAKE ;
 int WAKE_ARP ;
 int WAKE_BCAST ;
 int WAKE_MAGIC ;
 int WAKE_MCAST ;
 int WAKE_PHY ;
 int WAKE_UCAST ;
 int WUCSR ;
 int WUCSR_MPEN_ ;
 int WUCSR_MPR_ ;
 int WUCSR_WAKE_EN_ ;
 int WUCSR_WUFR_ ;
 int WUFF ;
 int cancel_delayed_work_sync (int *) ;
 int* kcalloc (int,int,int ) ;
 int kfree (int*) ;
 int memset (int*,int ,int) ;
 int netdev_info (TYPE_4__*,char*) ;
 int netdev_warn (TYPE_4__*,char*) ;
 int schedule_delayed_work (int *,int ) ;
 int smsc95xx_autosuspend (struct usbnet*,int) ;
 int smsc95xx_enable_phy_wakeup_interrupts (struct usbnet*,int) ;
 int smsc95xx_enter_suspend0 (struct usbnet*) ;
 int smsc95xx_enter_suspend1 (struct usbnet*) ;
 int smsc95xx_enter_suspend2 (struct usbnet*) ;
 int smsc95xx_link_ok_nopm (struct usbnet*) ;
 int smsc95xx_read_reg_nopm (struct usbnet*,int ,int*) ;
 int smsc95xx_start_rx_path (struct usbnet*,int) ;
 int smsc95xx_write_reg_nopm (struct usbnet*,int ,int) ;
 int smsc_crc (int const*,int,int) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_resume (struct usb_interface*) ;
 int usbnet_suspend (struct usb_interface*,TYPE_1__) ;

__attribute__((used)) static int smsc95xx_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct usbnet *dev = usb_get_intfdata(intf);
 struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
 u32 val, link_up;
 int ret;

 ret = usbnet_suspend(intf, message);
 if (ret < 0) {
  netdev_warn(dev->net, "usbnet_suspend error\n");
  return ret;
 }

 cancel_delayed_work_sync(&pdata->carrier_check);

 if (pdata->suspend_flags) {
  netdev_warn(dev->net, "error during last resume\n");
  pdata->suspend_flags = 0;
 }


 link_up = smsc95xx_link_ok_nopm(dev);

 if (message.event == PM_EVENT_AUTO_SUSPEND &&
     (pdata->features & FEATURE_REMOTE_WAKEUP)) {
  ret = smsc95xx_autosuspend(dev, link_up);
  goto done;
 }





 if (!(pdata->wolopts & SUPPORTED_WAKE) ||
  !(link_up || (pdata->wolopts & WAKE_PHY))) {
  netdev_info(dev->net, "entering SUSPEND2 mode\n");


  ret = smsc95xx_read_reg_nopm(dev, WUCSR, &val);
  if (ret < 0)
   goto done;

  val &= ~(WUCSR_MPEN_ | WUCSR_WAKE_EN_);

  ret = smsc95xx_write_reg_nopm(dev, WUCSR, val);
  if (ret < 0)
   goto done;

  ret = smsc95xx_read_reg_nopm(dev, PM_CTRL, &val);
  if (ret < 0)
   goto done;

  val &= ~(PM_CTL_ED_EN_ | PM_CTL_WOL_EN_);

  ret = smsc95xx_write_reg_nopm(dev, PM_CTRL, val);
  if (ret < 0)
   goto done;

  ret = smsc95xx_enter_suspend2(dev);
  goto done;
 }

 if (pdata->wolopts & WAKE_PHY) {
  ret = smsc95xx_enable_phy_wakeup_interrupts(dev,
   (PHY_INT_MASK_ANEG_COMP_ | PHY_INT_MASK_LINK_DOWN_));
  if (ret < 0) {
   netdev_warn(dev->net, "error enabling PHY wakeup ints\n");
   goto done;
  }




  if (!link_up) {
   netdev_info(dev->net, "entering SUSPEND1 mode\n");
   ret = smsc95xx_enter_suspend1(dev);
   goto done;
  }
 }

 if (pdata->wolopts & (WAKE_BCAST | WAKE_MCAST | WAKE_ARP | WAKE_UCAST)) {
  u32 *filter_mask = kcalloc(32, sizeof(u32), GFP_KERNEL);
  u32 command[2];
  u32 offset[2];
  u32 crc[4];
  int wuff_filter_count =
   (pdata->features & FEATURE_8_WAKEUP_FILTERS) ?
   LAN9500A_WUFF_NUM : LAN9500_WUFF_NUM;
  int i, filter = 0;

  if (!filter_mask) {
   netdev_warn(dev->net, "Unable to allocate filter_mask\n");
   ret = -ENOMEM;
   goto done;
  }

  memset(command, 0, sizeof(command));
  memset(offset, 0, sizeof(offset));
  memset(crc, 0, sizeof(crc));

  if (pdata->wolopts & WAKE_BCAST) {
   const u8 bcast[] = {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF};
   netdev_info(dev->net, "enabling broadcast detection\n");
   filter_mask[filter * 4] = 0x003F;
   filter_mask[filter * 4 + 1] = 0x00;
   filter_mask[filter * 4 + 2] = 0x00;
   filter_mask[filter * 4 + 3] = 0x00;
   command[filter/4] |= 0x05UL << ((filter % 4) * 8);
   offset[filter/4] |= 0x00 << ((filter % 4) * 8);
   crc[filter/2] |= smsc_crc(bcast, 6, filter);
   filter++;
  }

  if (pdata->wolopts & WAKE_MCAST) {
   const u8 mcast[] = {0x01, 0x00, 0x5E};
   netdev_info(dev->net, "enabling multicast detection\n");
   filter_mask[filter * 4] = 0x0007;
   filter_mask[filter * 4 + 1] = 0x00;
   filter_mask[filter * 4 + 2] = 0x00;
   filter_mask[filter * 4 + 3] = 0x00;
   command[filter/4] |= 0x09UL << ((filter % 4) * 8);
   offset[filter/4] |= 0x00 << ((filter % 4) * 8);
   crc[filter/2] |= smsc_crc(mcast, 3, filter);
   filter++;
  }

  if (pdata->wolopts & WAKE_ARP) {
   const u8 arp[] = {0x08, 0x06};
   netdev_info(dev->net, "enabling ARP detection\n");
   filter_mask[filter * 4] = 0x0003;
   filter_mask[filter * 4 + 1] = 0x00;
   filter_mask[filter * 4 + 2] = 0x00;
   filter_mask[filter * 4 + 3] = 0x00;
   command[filter/4] |= 0x05UL << ((filter % 4) * 8);
   offset[filter/4] |= 0x0C << ((filter % 4) * 8);
   crc[filter/2] |= smsc_crc(arp, 2, filter);
   filter++;
  }

  if (pdata->wolopts & WAKE_UCAST) {
   netdev_info(dev->net, "enabling unicast detection\n");
   filter_mask[filter * 4] = 0x003F;
   filter_mask[filter * 4 + 1] = 0x00;
   filter_mask[filter * 4 + 2] = 0x00;
   filter_mask[filter * 4 + 3] = 0x00;
   command[filter/4] |= 0x01UL << ((filter % 4) * 8);
   offset[filter/4] |= 0x00 << ((filter % 4) * 8);
   crc[filter/2] |= smsc_crc(dev->net->dev_addr, ETH_ALEN, filter);
   filter++;
  }

  for (i = 0; i < (wuff_filter_count * 4); i++) {
   ret = smsc95xx_write_reg_nopm(dev, WUFF, filter_mask[i]);
   if (ret < 0) {
    kfree(filter_mask);
    goto done;
   }
  }
  kfree(filter_mask);

  for (i = 0; i < (wuff_filter_count / 4); i++) {
   ret = smsc95xx_write_reg_nopm(dev, WUFF, command[i]);
   if (ret < 0)
    goto done;
  }

  for (i = 0; i < (wuff_filter_count / 4); i++) {
   ret = smsc95xx_write_reg_nopm(dev, WUFF, offset[i]);
   if (ret < 0)
    goto done;
  }

  for (i = 0; i < (wuff_filter_count / 2); i++) {
   ret = smsc95xx_write_reg_nopm(dev, WUFF, crc[i]);
   if (ret < 0)
    goto done;
  }


  ret = smsc95xx_read_reg_nopm(dev, WUCSR, &val);
  if (ret < 0)
   goto done;

  val |= WUCSR_WUFR_;

  ret = smsc95xx_write_reg_nopm(dev, WUCSR, val);
  if (ret < 0)
   goto done;
 }

 if (pdata->wolopts & WAKE_MAGIC) {

  ret = smsc95xx_read_reg_nopm(dev, WUCSR, &val);
  if (ret < 0)
   goto done;

  val |= WUCSR_MPR_;

  ret = smsc95xx_write_reg_nopm(dev, WUCSR, val);
  if (ret < 0)
   goto done;
 }


 ret = smsc95xx_read_reg_nopm(dev, WUCSR, &val);
 if (ret < 0)
  goto done;

 if (pdata->wolopts & (WAKE_BCAST | WAKE_MCAST | WAKE_ARP | WAKE_UCAST)) {
  netdev_info(dev->net, "enabling pattern match wakeup\n");
  val |= WUCSR_WAKE_EN_;
 } else {
  netdev_info(dev->net, "disabling pattern match wakeup\n");
  val &= ~WUCSR_WAKE_EN_;
 }

 if (pdata->wolopts & WAKE_MAGIC) {
  netdev_info(dev->net, "enabling magic packet wakeup\n");
  val |= WUCSR_MPEN_;
 } else {
  netdev_info(dev->net, "disabling magic packet wakeup\n");
  val &= ~WUCSR_MPEN_;
 }

 ret = smsc95xx_write_reg_nopm(dev, WUCSR, val);
 if (ret < 0)
  goto done;


 ret = smsc95xx_read_reg_nopm(dev, PM_CTRL, &val);
 if (ret < 0)
  goto done;

 val |= PM_CTL_WOL_EN_;


 if (pdata->wolopts & WAKE_PHY)
  val |= PM_CTL_ED_EN_;

 ret = smsc95xx_write_reg_nopm(dev, PM_CTRL, val);
 if (ret < 0)
  goto done;


 smsc95xx_start_rx_path(dev, 1);


 netdev_info(dev->net, "entering SUSPEND0 mode\n");
 ret = smsc95xx_enter_suspend0(dev);

done:




 if (ret && PMSG_IS_AUTO(message))
  usbnet_resume(intf);

 if (ret)
  schedule_delayed_work(&pdata->carrier_check,
          CARRIER_CHECK_DELAY);

 return ret;
}
