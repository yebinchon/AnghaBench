
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct img_ir_scancode_req {unsigned int scancode; int protocol; } ;


 int EINVAL ;
 int IMG_IR_SCANCODE ;
 int RC_PROTO_JVC ;

__attribute__((used)) static int img_ir_jvc_scancode(int len, u64 raw, u64 enabled_protocols,
          struct img_ir_scancode_req *request)
{
 unsigned int cust, data;

 if (len != 16)
  return -EINVAL;

 cust = (raw >> 0) & 0xff;
 data = (raw >> 8) & 0xff;

 request->protocol = RC_PROTO_JVC;
 request->scancode = cust << 8 | data;
 return IMG_IR_SCANCODE;
}
