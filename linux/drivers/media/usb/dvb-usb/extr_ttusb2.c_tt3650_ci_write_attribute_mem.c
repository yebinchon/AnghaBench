
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ca_en50221 {int dummy; } ;


 int EINVAL ;
 int TT3650_CMD_CI_WR_ATTR ;
 int ci_dbg (char*,int,int,int) ;
 int tt3650_ci_msg_locked (struct dvb_ca_en50221*,int ,int*,int,int) ;

__attribute__((used)) static int tt3650_ci_write_attribute_mem(struct dvb_ca_en50221 *ca, int slot, int address, u8 value)
{
 u8 buf[3];

 ci_dbg("%d 0x%04x 0x%02x", slot, address, value);

 if (slot)
  return -EINVAL;

 buf[0] = (address >> 8) & 0x0F;
 buf[1] = address;
 buf[2] = value;

 return tt3650_ci_msg_locked(ca, TT3650_CMD_CI_WR_ATTR, buf, 3, 3);
}
