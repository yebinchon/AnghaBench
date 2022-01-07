
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dln2_dev {int ep_out; int usb_dev; } ;


 int DLN2_USB_TIMEOUT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* dln2_prep_buf (int ,int ,int ,void const*,int*,int ) ;
 int kfree (void*) ;
 int usb_bulk_msg (int ,int ,void*,int,int*,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int dln2_send_wait(struct dln2_dev *dln2, u16 handle, u16 cmd, u16 echo,
     const void *obuf, int obuf_len)
{
 int ret = 0;
 int len = obuf_len;
 void *buf;
 int actual;

 buf = dln2_prep_buf(handle, cmd, echo, obuf, &len, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = usb_bulk_msg(dln2->usb_dev,
      usb_sndbulkpipe(dln2->usb_dev, dln2->ep_out),
      buf, len, &actual, DLN2_USB_TIMEOUT);

 kfree(buf);

 return ret;
}
