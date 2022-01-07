
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tango_ir {int rc; scalar_t__ rc6_base; } ;


 scalar_t__ RC6_DATA0 ;
 scalar_t__ RC6_DATA1 ;
 int RC_PROTO_RC6_0 ;
 int RC_SCANCODE_RC6_0 (int,int) ;
 int rc_keydown (int ,int ,int,int) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static void tango_ir_handle_rc6(struct tango_ir *ir)
{
 u32 data0, data1, toggle, mode, addr, cmd, code;

 data0 = readl_relaxed(ir->rc6_base + RC6_DATA0);
 data1 = readl_relaxed(ir->rc6_base + RC6_DATA1);

 mode = data0 >> 1 & 7;
 if (mode != 0)
  return;

 toggle = data0 & 1;
 addr = data0 >> 16;
 cmd = data1;

 code = RC_SCANCODE_RC6_0(addr, cmd);
 rc_keydown(ir->rc, RC_PROTO_RC6_0, code, toggle);
}
