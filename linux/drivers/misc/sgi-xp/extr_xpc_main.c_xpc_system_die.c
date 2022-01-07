
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct die_args {int regs; int trapnr; } ;
struct TYPE_2__ {int (* online_heartbeat ) () ;int (* offline_heartbeat ) () ;} ;
 int NOTIFY_DONE ;
 int X86_TRAP_DF ;
 int X86_TRAP_MF ;
 int X86_TRAP_XF ;
 int stub1 () ;
 int stub2 () ;
 int user_mode (int ) ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_die_deactivate () ;
 int xpc_kdebug_ignore ;

__attribute__((used)) static int
xpc_system_die(struct notifier_block *nb, unsigned long event, void *_die_args)
{
 struct die_args *die_args = _die_args;

 switch (event) {
 case 128:
  if (die_args->trapnr == X86_TRAP_DF)
   xpc_die_deactivate();

  if (((die_args->trapnr == X86_TRAP_MF) ||
       (die_args->trapnr == X86_TRAP_XF)) &&
      !user_mode(die_args->regs))
   xpc_die_deactivate();

  break;
 case 136:
 case 140:
  break;
 case 129:
 case 139:
 default:
  xpc_die_deactivate();
 }


 return NOTIFY_DONE;
}
