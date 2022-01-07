
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ttusb2_state {int ca_mutex; } ;
struct dvb_usb_device {struct ttusb2_state* priv; } ;
struct dvb_ca_en50221 {struct dvb_usb_device* data; } ;


 int EINVAL ;
 int TT3650_CMD_CI_RESET ;
 int TT3650_CMD_CI_SET_VIDEO_PORT ;
 int ci_dbg (char*,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tt3650_ci_msg (struct dvb_usb_device*,int ,int*,int,int) ;

__attribute__((used)) static int tt3650_ci_slot_reset(struct dvb_ca_en50221 *ca, int slot)
{
 struct dvb_usb_device *d = ca->data;
 struct ttusb2_state *state = d->priv;
 u8 buf[1];
 int ret;

 ci_dbg("%d", slot);

 if (slot)
  return -EINVAL;

 buf[0] = 0;

 mutex_lock(&state->ca_mutex);

 ret = tt3650_ci_msg(d, TT3650_CMD_CI_RESET, buf, 1, 1);
 if (ret)
  goto failed;

 msleep(500);

 buf[0] = 1;

 ret = tt3650_ci_msg(d, TT3650_CMD_CI_RESET, buf, 1, 1);
 if (ret)
  goto failed;

 msleep(500);

 buf[0] = 0;

 ret = tt3650_ci_msg(d, TT3650_CMD_CI_SET_VIDEO_PORT, buf, 1, 1);

 msleep(1100);

 failed:
 mutex_unlock(&state->ca_mutex);

 return ret;
}
