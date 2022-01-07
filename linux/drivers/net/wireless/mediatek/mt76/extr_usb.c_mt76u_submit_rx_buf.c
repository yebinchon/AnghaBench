
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int dummy; } ;
struct mt76_dev {int dummy; } ;


 int GFP_ATOMIC ;
 int MT_EP_IN_PKT_RX ;
 int USB_DIR_IN ;
 int mt76u_complete_rx ;
 int mt76u_fill_bulk_urb (struct mt76_dev*,int ,int ,struct urb*,int ,struct mt76_dev*) ;
 int trace_submit_urb (struct mt76_dev*,struct urb*) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int
mt76u_submit_rx_buf(struct mt76_dev *dev, struct urb *urb)
{
 mt76u_fill_bulk_urb(dev, USB_DIR_IN, MT_EP_IN_PKT_RX, urb,
       mt76u_complete_rx, dev);
 trace_submit_urb(dev, urb);

 return usb_submit_urb(urb, GFP_ATOMIC);
}
