
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rc_dev {int dummy; } ;
struct TYPE_2__ {int ir_config; struct rc_dev* rcdev; } ;
struct av7110 {TYPE_1__ ir; } ;
typedef enum rc_proto { ____Placeholder_rc_proto } rc_proto ;





 int RC_PROTO_RC5 ;
 int RC_PROTO_RCMM32 ;
 int RC_SCANCODE_RC5 (int,int) ;
 int dprintk (int,char*,int) ;
 int rc_keydown (struct rc_dev*,int,int,int) ;

void av7110_ir_handler(struct av7110 *av7110, u32 ircom)
{
 struct rc_dev *rcdev = av7110->ir.rcdev;
 enum rc_proto proto;
 u32 command, addr, scancode;
 u32 toggle;

 dprintk(4, "ir command = %08x\n", ircom);

 if (rcdev) {
  switch (av7110->ir.ir_config) {
  case 130:
   command = ircom & 0x3f;
   addr = (ircom >> 6) & 0x1f;
   scancode = RC_SCANCODE_RC5(addr, command);
   toggle = ircom & 0x0800;
   proto = RC_PROTO_RC5;
   break;

  case 128:
   scancode = ircom & ~0x8000;
   toggle = ircom & 0x8000;
   proto = RC_PROTO_RCMM32;
   break;

  case 129:






   command = ircom & 0x3f;
   addr = (ircom >> 6) & 0x1f;
   if (!(ircom & 0x1000))
    command |= 0x40;
   scancode = RC_SCANCODE_RC5(addr, command);
   toggle = ircom & 0x0800;
   proto = RC_PROTO_RC5;
   break;
  default:
   dprintk(2, "unknown ir config %d\n",
    av7110->ir.ir_config);
   return;
  }

  rc_keydown(rcdev, proto, scancode, toggle != 0);
 }
}
