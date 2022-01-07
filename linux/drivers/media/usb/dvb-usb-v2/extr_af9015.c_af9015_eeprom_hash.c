
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usb_interface {int dev; } ;
struct req_t {int member_4; int member_5; int addr; int * data; int * member_6; int member_3; int member_2; int member_1; int member_0; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct af9015_state {int eeprom_sum; } ;
typedef int __le32 ;


 int AF9015_EEPROM_SIZE ;
 int AF9015_I2C_EEPROM ;
 int GOLDEN_RATIO_PRIME_32 ;
 int READ_I2C ;
 int af9015_ctrl_msg (struct dvb_usb_device*,struct req_t*) ;
 struct af9015_state* d_to_priv (struct dvb_usb_device*) ;
 int dev_dbg (int *,char*,int,...) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int af9015_eeprom_hash(struct dvb_usb_device *d)
{
 struct af9015_state *state = d_to_priv(d);
 struct usb_interface *intf = d->intf;
 int ret, i;
 u8 buf[AF9015_EEPROM_SIZE];
 struct req_t req = {READ_I2C, AF9015_I2C_EEPROM, 0, 0, 1, 1, ((void*)0)};


 for (i = 0; i < AF9015_EEPROM_SIZE; i++) {
  req.addr = i;
  req.data = &buf[i];
  ret = af9015_ctrl_msg(d, &req);
  if (ret < 0)
   goto err;
 }


 for (i = 0; i < AF9015_EEPROM_SIZE / sizeof(u32); i++) {
  state->eeprom_sum *= GOLDEN_RATIO_PRIME_32;
  state->eeprom_sum += le32_to_cpu(((__le32 *)buf)[i]);
 }

 for (i = 0; i < AF9015_EEPROM_SIZE; i += 16)
  dev_dbg(&intf->dev, "%*ph\n", 16, buf + i);

 dev_dbg(&intf->dev, "eeprom sum %.8x\n", state->eeprom_sum);
 return 0;
err:
 dev_dbg(&intf->dev, "failed %d\n", ret);
 return ret;
}
