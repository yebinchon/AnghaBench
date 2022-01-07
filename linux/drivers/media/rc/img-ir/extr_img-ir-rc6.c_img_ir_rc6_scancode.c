
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct img_ir_scancode_req {unsigned int scancode; unsigned int toggle; int protocol; } ;


 int EINVAL ;
 int IMG_IR_SCANCODE ;
 int RC_PROTO_RC6_0 ;

__attribute__((used)) static int img_ir_rc6_scancode(int len, u64 raw, u64 enabled_protocols,
    struct img_ir_scancode_req *request)
{
 unsigned int addr, cmd, mode, trl1, trl2;
 raw >>= 27;

 trl1 = (raw >> 17) & 0x01;
 trl2 = (raw >> 16) & 0x01;

 mode = (raw >> 18) & 0x07;
 addr = (raw >> 8) & 0xff;
 cmd = raw & 0xff;





 if (trl1 == trl2)
  return -EINVAL;


 if (mode)
  return -EINVAL;

 request->protocol = RC_PROTO_RC6_0;
 request->scancode = addr << 8 | cmd;
 request->toggle = trl2;
 return IMG_IR_SCANCODE;
}
