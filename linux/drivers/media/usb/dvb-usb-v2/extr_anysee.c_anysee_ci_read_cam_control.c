
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;
struct dvb_ca_en50221 {struct dvb_usb_device* data; } ;
typedef int buf ;


 int CMD_CI ;
 int anysee_ctrl_msg (struct dvb_usb_device*,int*,int,int*,int) ;

__attribute__((used)) static int anysee_ci_read_cam_control(struct dvb_ca_en50221 *ci, int slot,
 u8 addr)
{
 struct dvb_usb_device *d = ci->data;
 int ret;
 u8 buf[] = {CMD_CI, 0x04, 0x40, addr, 0x00, 1};
 u8 val;

 ret = anysee_ctrl_msg(d, buf, sizeof(buf), &val, 1);
 if (ret)
  return ret;

 return val;
}
