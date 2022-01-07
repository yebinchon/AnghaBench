
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct img_ir_scancode_req {int scancode; int protocol; } ;


 int EINVAL ;
 int IMG_IR_REPEATCODE ;
 int IMG_IR_SCANCODE ;
 int RC_PROTO_NEC ;
 int RC_PROTO_NEC32 ;
 int RC_PROTO_NECX ;
 int bitrev8 (unsigned int) ;

__attribute__((used)) static int img_ir_nec_scancode(int len, u64 raw, u64 enabled_protocols,
          struct img_ir_scancode_req *request)
{
 unsigned int addr, addr_inv, data, data_inv;

 if (!len)
  return IMG_IR_REPEATCODE;
 if (len != 32)
  return -EINVAL;

 addr = (raw >> 0) & 0xff;
 addr_inv = (raw >> 8) & 0xff;
 data = (raw >> 16) & 0xff;
 data_inv = (raw >> 24) & 0xff;
 if ((data_inv ^ data) != 0xff) {


  request->scancode = bitrev8(addr) << 24 |
    bitrev8(addr_inv) << 16 |
    bitrev8(data) << 8 |
    bitrev8(data_inv);
  request->protocol = RC_PROTO_NEC32;
 } else if ((addr_inv ^ addr) != 0xff) {


  request->scancode = addr << 16 |
    addr_inv << 8 |
    data;
  request->protocol = RC_PROTO_NECX;
 } else {


  request->scancode = addr << 8 |
    data;
  request->protocol = RC_PROTO_NEC;
 }
 return IMG_IR_SCANCODE;
}
