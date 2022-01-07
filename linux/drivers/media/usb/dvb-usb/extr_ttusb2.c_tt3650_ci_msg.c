
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int memcpy (int *,int *,unsigned int) ;
 int ttusb2_msg (struct dvb_usb_device*,int ,int *,unsigned int,int *,unsigned int) ;

__attribute__((used)) static int tt3650_ci_msg(struct dvb_usb_device *d, u8 cmd, u8 *data, unsigned int write_len, unsigned int read_len)
{
 int ret;
 u8 rx[60];
 ret = ttusb2_msg(d, cmd, data, write_len, rx, read_len);
 if (!ret)
  memcpy(data, rx, read_len);
 return ret;
}
