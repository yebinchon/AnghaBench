
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tango_ir {int rc; scalar_t__ rc5_base; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;


 scalar_t__ IR_NEC_DATA ;
 int ir_nec_bytes_to_scancode (int,int,int,int,int*) ;
 int rc_keydown (int ,int,int,int ) ;
 int rc_repeat (int ) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static void tango_ir_handle_nec(struct tango_ir *ir)
{
 u32 v, code;
 enum rc_proto proto;

 v = readl_relaxed(ir->rc5_base + IR_NEC_DATA);
 if (!v) {
  rc_repeat(ir->rc);
  return;
 }

 code = ir_nec_bytes_to_scancode(v, v >> 8, v >> 16, v >> 24, &proto);
 rc_keydown(ir->rc, proto, code, 0);
}
