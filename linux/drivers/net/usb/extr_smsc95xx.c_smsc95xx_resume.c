
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usbnet {int net; scalar_t__* data; } ;
struct usb_interface {int dummy; } ;
struct smsc95xx_priv {int suspend_flags; int carrier_check; } ;


 int BUG_ON (int) ;
 int CARRIER_CHECK_DELAY ;
 int PM_CTL_WOL_EN_ ;
 int PM_CTL_WUPS_ ;
 int PM_CTRL ;
 int SUSPEND_ALLMODES ;
 int WUCSR ;
 int WUCSR_MPEN_ ;
 int WUCSR_WAKE_EN_ ;
 int netdev_dbg (int ,char*,int) ;
 int netdev_warn (int ,char*) ;
 int schedule_delayed_work (int *,int ) ;
 int smsc95xx_read_reg_nopm (struct usbnet*,int ,int*) ;
 int smsc95xx_write_reg_nopm (struct usbnet*,int ,int) ;
 struct usbnet* usb_get_intfdata (struct usb_interface*) ;
 int usbnet_resume (struct usb_interface*) ;

__attribute__((used)) static int smsc95xx_resume(struct usb_interface *intf)
{
 struct usbnet *dev = usb_get_intfdata(intf);
 struct smsc95xx_priv *pdata;
 u8 suspend_flags;
 int ret;
 u32 val;

 BUG_ON(!dev);
 pdata = (struct smsc95xx_priv *)(dev->data[0]);
 suspend_flags = pdata->suspend_flags;

 netdev_dbg(dev->net, "resume suspend_flags=0x%02x\n", suspend_flags);


 pdata->suspend_flags = 0;
 schedule_delayed_work(&pdata->carrier_check, CARRIER_CHECK_DELAY);

 if (suspend_flags & SUSPEND_ALLMODES) {

  ret = smsc95xx_read_reg_nopm(dev, WUCSR, &val);
  if (ret < 0)
   return ret;

  val &= ~(WUCSR_WAKE_EN_ | WUCSR_MPEN_);

  ret = smsc95xx_write_reg_nopm(dev, WUCSR, val);
  if (ret < 0)
   return ret;


  ret = smsc95xx_read_reg_nopm(dev, PM_CTRL, &val);
  if (ret < 0)
   return ret;

  val &= ~PM_CTL_WOL_EN_;
  val |= PM_CTL_WUPS_;

  ret = smsc95xx_write_reg_nopm(dev, PM_CTRL, val);
  if (ret < 0)
   return ret;
 }

 ret = usbnet_resume(intf);
 if (ret < 0)
  netdev_warn(dev->net, "usbnet_resume error\n");

 return ret;
}
