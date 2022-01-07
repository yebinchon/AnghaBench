
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {int dummy; } ;


 int AF9005_CMD_READ ;
 int AF9005_OFDM_REG ;
 int af9005_generic_read_write (struct dvb_usb_device*,int ,int ,int ,int *,int) ;
 int deb_reg (char*,...) ;

int af9005_read_ofdm_register(struct dvb_usb_device *d, u16 reg, u8 * value)
{
 int ret;
 deb_reg("read register %x ", reg);
 ret = af9005_generic_read_write(d, reg,
     AF9005_CMD_READ, AF9005_OFDM_REG,
     value, 1);
 if (ret)
  deb_reg("failed\n");
 else
  deb_reg("value %x\n", *value);
 return ret;
}
