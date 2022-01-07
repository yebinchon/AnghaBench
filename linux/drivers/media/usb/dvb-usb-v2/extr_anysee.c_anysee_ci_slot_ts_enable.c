
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct dvb_ca_en50221 {struct dvb_usb_device* data; } ;


 int REG_IOD ;
 int anysee_wr_reg_mask (struct dvb_usb_device*,int ,int,int) ;

__attribute__((used)) static int anysee_ci_slot_ts_enable(struct dvb_ca_en50221 *ci, int slot)
{
 struct dvb_usb_device *d = ci->data;
 int ret;

 ret = anysee_wr_reg_mask(d, REG_IOD, (0 << 1), 0x02);
 if (ret)
  return ret;

 return 0;
}
