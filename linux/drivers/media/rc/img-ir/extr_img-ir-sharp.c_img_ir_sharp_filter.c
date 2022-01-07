
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rc_scancode_filter {int data; int mask; } ;
struct img_ir_filter {unsigned int data; unsigned int mask; } ;



__attribute__((used)) static int img_ir_sharp_filter(const struct rc_scancode_filter *in,
          struct img_ir_filter *out, u64 protocols)
{
 unsigned int addr, cmd, exp = 0, chk = 0;
 unsigned int addr_m, cmd_m, exp_m = 0, chk_m = 0;

 addr = (in->data >> 8) & 0x1f;
 addr_m = (in->mask >> 8) & 0x1f;
 cmd = (in->data >> 0) & 0xff;
 cmd_m = (in->mask >> 0) & 0xff;
 if (cmd_m) {

  exp = 1;
  exp_m = 1;
  chk = 0;
  chk_m = 1;
 }

 out->data = addr |
      cmd << 5 |
      exp << 13 |
      chk << 14;
 out->mask = addr_m |
      cmd_m << 5 |
      exp_m << 13 |
      chk_m << 14;

 return 0;
}
