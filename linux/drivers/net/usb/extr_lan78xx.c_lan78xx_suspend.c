
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct usb_interface {int dummy; } ;
struct lan78xx_priv {int wol; } ;
struct TYPE_6__ {int lock; } ;
struct lan78xx_net {int stat_monitor; int flags; int net; int urb_intr; TYPE_2__ txq; TYPE_2__ txq_pend; int suspend_count; scalar_t__* data; } ;
struct TYPE_5__ {int event; } ;
typedef TYPE_1__ pm_message_t ;


 int EBUSY ;
 int EVENT_DEV_ASLEEP ;
 int MAC_RX ;
 int MAC_RX_RXEN_ ;
 int MAC_TX ;
 int MAC_TX_TXEN_ ;
 scalar_t__ PMSG_IS_AUTO (TYPE_1__) ;
 int PMT_CTL ;
 int PMT_CTL_PHY_WAKE_EN_ ;
 int PMT_CTL_RES_CLR_WKP_EN_ ;
 int PMT_CTL_RES_CLR_WKP_STS_ ;
 int PMT_CTL_SUS_MODE_3_ ;
 int PMT_CTL_SUS_MODE_MASK_ ;
 int PMT_CTL_WOL_EN_ ;
 int PMT_CTL_WUPS_MASK_ ;
 int WK_SRC ;
 int WUCSR ;
 int WUCSR2 ;
 int WUCSR_RFE_WAKE_EN_ ;
 int WUCSR_STORE_WAKE_ ;
 int del_timer (int *) ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int*) ;
 int lan78xx_set_suspend (struct lan78xx_net*,int ) ;
 int lan78xx_terminate_urbs (struct lan78xx_net*) ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,int) ;
 int netif_device_attach (int ) ;
 int netif_device_detach (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ skb_queue_len (TYPE_2__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 struct lan78xx_net* usb_get_intfdata (struct usb_interface*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static int lan78xx_suspend(struct usb_interface *intf, pm_message_t message)
{
 struct lan78xx_net *dev = usb_get_intfdata(intf);
 struct lan78xx_priv *pdata = (struct lan78xx_priv *)(dev->data[0]);
 u32 buf;
 int ret;
 int event;

 event = message.event;

 if (!dev->suspend_count++) {
  spin_lock_irq(&dev->txq.lock);

  if ((skb_queue_len(&dev->txq) ||
       skb_queue_len(&dev->txq_pend)) &&
   PMSG_IS_AUTO(message)) {
   spin_unlock_irq(&dev->txq.lock);
   ret = -EBUSY;
   goto out;
  } else {
   set_bit(EVENT_DEV_ASLEEP, &dev->flags);
   spin_unlock_irq(&dev->txq.lock);
  }


  ret = lan78xx_read_reg(dev, MAC_TX, &buf);
  buf &= ~MAC_TX_TXEN_;
  ret = lan78xx_write_reg(dev, MAC_TX, buf);
  ret = lan78xx_read_reg(dev, MAC_RX, &buf);
  buf &= ~MAC_RX_RXEN_;
  ret = lan78xx_write_reg(dev, MAC_RX, buf);


  netif_device_detach(dev->net);
  lan78xx_terminate_urbs(dev);
  usb_kill_urb(dev->urb_intr);


  netif_device_attach(dev->net);
 }

 if (test_bit(EVENT_DEV_ASLEEP, &dev->flags)) {
  del_timer(&dev->stat_monitor);

  if (PMSG_IS_AUTO(message)) {

   ret = lan78xx_read_reg(dev, MAC_TX, &buf);
   buf &= ~MAC_TX_TXEN_;
   ret = lan78xx_write_reg(dev, MAC_TX, buf);
   ret = lan78xx_read_reg(dev, MAC_RX, &buf);
   buf &= ~MAC_RX_RXEN_;
   ret = lan78xx_write_reg(dev, MAC_RX, buf);

   ret = lan78xx_write_reg(dev, WUCSR, 0);
   ret = lan78xx_write_reg(dev, WUCSR2, 0);
   ret = lan78xx_write_reg(dev, WK_SRC, 0xFFF1FF1FUL);


   ret = lan78xx_read_reg(dev, WUCSR, &buf);

   buf |= WUCSR_RFE_WAKE_EN_;
   buf |= WUCSR_STORE_WAKE_;

   ret = lan78xx_write_reg(dev, WUCSR, buf);

   ret = lan78xx_read_reg(dev, PMT_CTL, &buf);

   buf &= ~PMT_CTL_RES_CLR_WKP_EN_;
   buf |= PMT_CTL_RES_CLR_WKP_STS_;

   buf |= PMT_CTL_PHY_WAKE_EN_;
   buf |= PMT_CTL_WOL_EN_;
   buf &= ~PMT_CTL_SUS_MODE_MASK_;
   buf |= PMT_CTL_SUS_MODE_3_;

   ret = lan78xx_write_reg(dev, PMT_CTL, buf);

   ret = lan78xx_read_reg(dev, PMT_CTL, &buf);

   buf |= PMT_CTL_WUPS_MASK_;

   ret = lan78xx_write_reg(dev, PMT_CTL, buf);

   ret = lan78xx_read_reg(dev, MAC_RX, &buf);
   buf |= MAC_RX_RXEN_;
   ret = lan78xx_write_reg(dev, MAC_RX, buf);
  } else {
   lan78xx_set_suspend(dev, pdata->wol);
  }
 }

 ret = 0;
out:
 return ret;
}
