
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dvb_usb_device {TYPE_1__* adapter; } ;
struct TYPE_4__ {struct dvb_usb_device* data; int poll_slot_status; int slot_ts_enable; int slot_shutdown; int slot_reset; int write_cam_control; int read_cam_control; int write_attribute_mem; int read_attribute_mem; int owner; } ;
struct anysee_state {int ci_attached; TYPE_2__ ci; } ;
struct TYPE_3__ {int dvb_adap; } ;


 int REG_IOA ;
 int REG_IOD ;
 int THIS_MODULE ;
 int anysee_ci_poll_slot_status ;
 int anysee_ci_read_attribute_mem ;
 int anysee_ci_read_cam_control ;
 int anysee_ci_slot_reset ;
 int anysee_ci_slot_shutdown ;
 int anysee_ci_slot_ts_enable ;
 int anysee_ci_write_attribute_mem ;
 int anysee_ci_write_cam_control ;
 int anysee_wr_reg_mask (struct dvb_usb_device*,int ,int,int) ;
 struct anysee_state* d_to_priv (struct dvb_usb_device*) ;
 int dvb_ca_en50221_init (int *,TYPE_2__*,int ,int) ;

__attribute__((used)) static int anysee_ci_init(struct dvb_usb_device *d)
{
 struct anysee_state *state = d_to_priv(d);
 int ret;

 state->ci.owner = THIS_MODULE;
 state->ci.read_attribute_mem = anysee_ci_read_attribute_mem;
 state->ci.write_attribute_mem = anysee_ci_write_attribute_mem;
 state->ci.read_cam_control = anysee_ci_read_cam_control;
 state->ci.write_cam_control = anysee_ci_write_cam_control;
 state->ci.slot_reset = anysee_ci_slot_reset;
 state->ci.slot_shutdown = anysee_ci_slot_shutdown;
 state->ci.slot_ts_enable = anysee_ci_slot_ts_enable;
 state->ci.poll_slot_status = anysee_ci_poll_slot_status;
 state->ci.data = d;

 ret = anysee_wr_reg_mask(d, REG_IOA, (1 << 7), 0x80);
 if (ret)
  return ret;

 ret = anysee_wr_reg_mask(d, REG_IOD, (0 << 2)|(0 << 1)|(0 << 0), 0x07);
 if (ret)
  return ret;

 ret = anysee_wr_reg_mask(d, REG_IOD, (1 << 2)|(1 << 1)|(1 << 0), 0x07);
 if (ret)
  return ret;

 ret = dvb_ca_en50221_init(&d->adapter[0].dvb_adap, &state->ci, 0, 1);
 if (ret)
  return ret;

 state->ci_attached = 1;

 return 0;
}
