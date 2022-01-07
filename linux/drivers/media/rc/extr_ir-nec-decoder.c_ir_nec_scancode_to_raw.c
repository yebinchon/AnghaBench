
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 int RC_PROTO_NEC32 ;
 int RC_PROTO_NECX ;

__attribute__((used)) static u32 ir_nec_scancode_to_raw(enum rc_proto protocol, u32 scancode)
{
 unsigned int addr, addr_inv, data, data_inv;

 data = scancode & 0xff;

 if (protocol == RC_PROTO_NEC32) {


  addr_inv = (scancode >> 24) & 0xff;
  addr = (scancode >> 16) & 0xff;
  data_inv = (scancode >> 8) & 0xff;
 } else if (protocol == RC_PROTO_NECX) {


  addr = (scancode >> 16) & 0xff;
  addr_inv = (scancode >> 8) & 0xff;
  data_inv = data ^ 0xff;
 } else {


  addr = (scancode >> 8) & 0xff;
  addr_inv = addr ^ 0xff;
  data_inv = data ^ 0xff;
 }


 return data_inv << 24 |
        data << 16 |
        addr_inv << 8 |
        addr;
}
