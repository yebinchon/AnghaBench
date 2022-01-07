
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {scalar_t__ priv; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct az6027_device_state {int ca_mutex; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int az6027_usb_in_op (struct dvb_usb_device*,int,int,int,int*,int) ;
 int deb_info (char*,int,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int warn (char*,...) ;

__attribute__((used)) static int az6027_ci_read_cam_control(struct dvb_ca_en50221 *ca,
          int slot,
          u8 address)
{
 struct dvb_usb_device *d = (struct dvb_usb_device *)ca->data;
 struct az6027_device_state *state = (struct az6027_device_state *)d->priv;

 int ret;
 u8 req;
 u16 value;
 u16 index;
 int blen;
 u8 *b;

 if (slot != 0)
  return -EINVAL;

 b = kmalloc(12, GFP_KERNEL);
 if (!b)
  return -ENOMEM;

 mutex_lock(&state->ca_mutex);

 req = 0xC3;
 value = address;
 index = 0;
 blen = 2;

 ret = az6027_usb_in_op(d, req, value, index, b, blen);
 if (ret < 0) {
  warn("usb in operation failed. (%d)", ret);
  ret = -EINVAL;
 } else {
  if (b[0] == 0)
   warn("Read CI IO error");

  ret = b[1];
  deb_info("read cam data = %x from 0x%x", b[1], value);
 }

 mutex_unlock(&state->ca_mutex);
 kfree(b);
 return ret;
}
