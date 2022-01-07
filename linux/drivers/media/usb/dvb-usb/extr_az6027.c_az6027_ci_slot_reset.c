
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {scalar_t__ priv; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct az6027_device_state {int ca_mutex; } ;


 scalar_t__ CI_CamReady (struct dvb_ca_en50221*,int) ;
 int az6027_usb_out_op (struct dvb_usb_device*,int,int,int,int *,int) ;
 int deb_info (char*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int warn (char*,int) ;

__attribute__((used)) static int az6027_ci_slot_reset(struct dvb_ca_en50221 *ca, int slot)
{
 struct dvb_usb_device *d = (struct dvb_usb_device *)ca->data;
 struct az6027_device_state *state = (struct az6027_device_state *)d->priv;

 int ret, i;
 u8 req;
 u16 value;
 u16 index;
 int blen;

 mutex_lock(&state->ca_mutex);

 req = 0xC6;
 value = 1;
 index = 0;
 blen = 0;

 ret = az6027_usb_out_op(d, req, value, index, ((void*)0), blen);
 if (ret != 0) {
  warn("usb out operation failed. (%d)", ret);
  goto failed;
 }

 msleep(500);
 req = 0xC6;
 value = 0;
 index = 0;
 blen = 0;

 ret = az6027_usb_out_op(d, req, value, index, ((void*)0), blen);
 if (ret != 0) {
  warn("usb out operation failed. (%d)", ret);
  goto failed;
 }

 for (i = 0; i < 15; i++) {
  msleep(100);

  if (CI_CamReady(ca, slot)) {
   deb_info("CAM Ready");
   break;
  }
 }
 msleep(5000);

failed:
 mutex_unlock(&state->ca_mutex);
 return ret;
}
