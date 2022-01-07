
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct img_ir_scancode_req {unsigned int scancode; unsigned int toggle; int protocol; } ;


 int EINVAL ;
 int IMG_IR_SCANCODE ;
 int RC_PROTO_RC5 ;

__attribute__((used)) static int img_ir_rc5_scancode(int len, u64 raw, u64 enabled_protocols,
    struct img_ir_scancode_req *request)
{
 unsigned int addr, cmd, tgl, start;


 raw >>= 2;

 start = (raw >> 13) & 0x01;
 tgl = (raw >> 11) & 0x01;
 addr = (raw >> 6) & 0x1f;
 cmd = raw & 0x3f;




 cmd += ((raw >> 12) & 0x01) ? 0 : 0x40;

 if (!start)
  return -EINVAL;

 request->protocol = RC_PROTO_RC5;
 request->scancode = addr << 8 | cmd;
 request->toggle = tgl;
 return IMG_IR_SCANCODE;
}
