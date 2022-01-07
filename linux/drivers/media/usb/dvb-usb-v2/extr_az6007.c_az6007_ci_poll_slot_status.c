
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct dvb_usb_device {int dummy; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct az6007_device_state {int ca_mutex; } ;


 int DVB_CA_EN50221_POLL_CAM_PRESENT ;
 int DVB_CA_EN50221_POLL_CAM_READY ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int az6007_read (struct dvb_usb_device*,int,scalar_t__,scalar_t__,int*,int) ;
 struct az6007_device_state* d_to_priv (struct dvb_usb_device*) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int) ;

__attribute__((used)) static int az6007_ci_poll_slot_status(struct dvb_ca_en50221 *ca, int slot, int open)
{
 struct dvb_usb_device *d = (struct dvb_usb_device *)ca->data;
 struct az6007_device_state *state = d_to_priv(d);
 int ret;
 u8 req;
 u16 value;
 u16 index;
 int blen;
 u8 *b;

 b = kmalloc(12, GFP_KERNEL);
 if (!b)
  return -ENOMEM;
 mutex_lock(&state->ca_mutex);

 req = 0xC5;
 value = 0;
 index = 0;
 blen = 1;

 ret = az6007_read(d, req, value, index, b, blen);
 if (ret < 0) {
  pr_warn("usb in operation failed. (%d)\n", ret);
  ret = -EIO;
 } else
  ret = 0;

 if (!ret && b[0] == 1) {
  ret = DVB_CA_EN50221_POLL_CAM_PRESENT |
        DVB_CA_EN50221_POLL_CAM_READY;
 }

 mutex_unlock(&state->ca_mutex);
 kfree(b);
 return ret;
}
