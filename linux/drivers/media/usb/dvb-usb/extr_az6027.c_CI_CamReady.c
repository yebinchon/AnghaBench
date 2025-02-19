
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct dvb_usb_device {int dummy; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int az6027_usb_in_op (struct dvb_usb_device*,int,scalar_t__,scalar_t__,int*,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int warn (char*,int) ;

__attribute__((used)) static int CI_CamReady(struct dvb_ca_en50221 *ca, int slot)
{
 struct dvb_usb_device *d = (struct dvb_usb_device *)ca->data;

 int ret;
 u8 req;
 u16 value;
 u16 index;
 int blen;
 u8 *b;

 b = kmalloc(12, GFP_KERNEL);
 if (!b)
  return -ENOMEM;

 req = 0xC8;
 value = 0;
 index = 0;
 blen = 1;

 ret = az6027_usb_in_op(d, req, value, index, b, blen);
 if (ret < 0) {
  warn("usb in operation failed. (%d)", ret);
  ret = -EIO;
 } else{
  ret = b[0];
 }
 kfree(b);
 return ret;
}
