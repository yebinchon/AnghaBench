
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ca_en50221 {int dummy; } ;


 int EINVAL ;
 int TT3650_CMD_CI_RD_ATTR ;
 int ci_dbg (char*,int,int,int) ;
 int tt3650_ci_msg_locked (struct dvb_ca_en50221*,int ,int*,int,int) ;

__attribute__((used)) static int tt3650_ci_read_attribute_mem(struct dvb_ca_en50221 *ca, int slot, int address)
{
 u8 buf[3];
 int ret = 0;

 if (slot)
  return -EINVAL;

 buf[0] = (address >> 8) & 0x0F;
 buf[1] = address;


 ret = tt3650_ci_msg_locked(ca, TT3650_CMD_CI_RD_ATTR, buf, 2, 3);

 ci_dbg("%04x -> %d 0x%02x", address, ret, buf[2]);

 if (ret < 0)
  return ret;

 return buf[2];
}
