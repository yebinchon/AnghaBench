
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {scalar_t__ dev_type; } ;
typedef int __u16 ;


 int REQ_14_SET_GET_I2C_WR2_RDN ;
 int REQ_16_SET_GET_I2C_WR1_RDN ;
 int REQ_35_AFTEK_TUNER_READ ;
 scalar_t__ TM6010 ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int tm6000_read_write_usb (struct tm6000_core*,int,int ,unsigned char,int,...) ;

__attribute__((used)) static int tm6000_i2c_recv_regs16(struct tm6000_core *dev, unsigned char addr,
      __u16 reg, char *buf, int len)
{
 int rc;
 unsigned char ureg;

 if (!buf || len != 2)
  return -1;


 if (dev->dev_type == TM6010) {
  ureg = reg & 0xFF;
  rc = tm6000_read_write_usb(dev, USB_DIR_OUT | USB_TYPE_VENDOR |
   USB_RECIP_DEVICE, REQ_16_SET_GET_I2C_WR1_RDN,
   addr | (reg & 0xFF00), 0, &ureg, 1);

  if (rc < 0) {

   return rc;
  }

  rc = tm6000_read_write_usb(dev, USB_DIR_IN | USB_TYPE_VENDOR |
   USB_RECIP_DEVICE, REQ_35_AFTEK_TUNER_READ,
   reg, 0, buf, len);
 } else {
  rc = tm6000_read_write_usb(dev, USB_DIR_IN | USB_TYPE_VENDOR |
   USB_RECIP_DEVICE, REQ_14_SET_GET_I2C_WR2_RDN,
   addr, reg, buf, len);
 }


 return rc;
}
