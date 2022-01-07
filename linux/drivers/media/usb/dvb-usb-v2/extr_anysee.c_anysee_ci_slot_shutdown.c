
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;
struct dvb_ca_en50221 {struct dvb_usb_device* data; } ;


 int REG_IOA ;
 int anysee_wr_reg_mask (struct dvb_usb_device*,int ,int,int) ;
 int msleep (int) ;

__attribute__((used)) static int anysee_ci_slot_shutdown(struct dvb_ca_en50221 *ci, int slot)
{
 struct dvb_usb_device *d = ci->data;
 int ret;

 ret = anysee_wr_reg_mask(d, REG_IOA, (0 << 7), 0x80);
 if (ret)
  return ret;

 msleep(30);

 ret = anysee_wr_reg_mask(d, REG_IOA, (1 << 7), 0x80);
 if (ret)
  return ret;

 return 0;
}
