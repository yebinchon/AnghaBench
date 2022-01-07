
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct img_ir_scancode_req {unsigned int scancode; int protocol; } ;


 int EINVAL ;
 int IMG_IR_SCANCODE ;
 int RC_PROTO_SHARP ;

__attribute__((used)) static int img_ir_sharp_scancode(int len, u64 raw, u64 enabled_protocols,
     struct img_ir_scancode_req *request)
{
 unsigned int addr, cmd, exp, chk;

 if (len != 15)
  return -EINVAL;

 addr = (raw >> 0) & 0x1f;
 cmd = (raw >> 5) & 0xff;
 exp = (raw >> 13) & 0x1;
 chk = (raw >> 14) & 0x1;


 if (!exp)
  return -EINVAL;
 if (chk)

  return -EINVAL;

 request->protocol = RC_PROTO_SHARP;
 request->scancode = addr << 8 | cmd;
 return IMG_IR_SCANCODE;
}
