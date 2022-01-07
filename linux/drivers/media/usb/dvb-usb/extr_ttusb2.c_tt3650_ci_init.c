
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct dvb_usb_device* data; int poll_slot_status; int slot_ts_enable; int slot_shutdown; int slot_reset; int write_cam_control; int read_cam_control; int write_attribute_mem; int read_attribute_mem; int owner; } ;
struct ttusb2_state {TYPE_1__ ca; int ca_mutex; } ;
struct dvb_usb_device {struct ttusb2_state* priv; } ;
struct dvb_usb_adapter {int dvb_adap; struct dvb_usb_device* dev; } ;


 int THIS_MODULE ;
 int ci_dbg (char*) ;
 int dvb_ca_en50221_init (int *,TYPE_1__*,int ,int) ;
 int err (char*,int) ;
 int info (char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int mutex_init (int *) ;
 int tt3650_ci_poll_slot_status ;
 int tt3650_ci_read_attribute_mem ;
 int tt3650_ci_read_cam_control ;
 int tt3650_ci_slot_reset ;
 int tt3650_ci_slot_shutdown ;
 int tt3650_ci_slot_ts_enable ;
 int tt3650_ci_write_attribute_mem ;
 int tt3650_ci_write_cam_control ;

__attribute__((used)) static int tt3650_ci_init(struct dvb_usb_adapter *a)
{
 struct dvb_usb_device *d = a->dev;
 struct ttusb2_state *state = d->priv;
 int ret;

 ci_dbg("");

 mutex_init(&state->ca_mutex);

 state->ca.owner = THIS_MODULE;
 state->ca.read_attribute_mem = tt3650_ci_read_attribute_mem;
 state->ca.write_attribute_mem = tt3650_ci_write_attribute_mem;
 state->ca.read_cam_control = tt3650_ci_read_cam_control;
 state->ca.write_cam_control = tt3650_ci_write_cam_control;
 state->ca.slot_reset = tt3650_ci_slot_reset;
 state->ca.slot_shutdown = tt3650_ci_slot_shutdown;
 state->ca.slot_ts_enable = tt3650_ci_slot_ts_enable;
 state->ca.poll_slot_status = tt3650_ci_poll_slot_status;
 state->ca.data = d;

 ret = dvb_ca_en50221_init(&a->dvb_adap,
      &state->ca,
                  0,
                    1);
 if (ret) {
  err("Cannot initialize CI: Error %d.", ret);
  memset(&state->ca, 0, sizeof(state->ca));
  return ret;
 }

 info("CI initialized.");

 return 0;
}
