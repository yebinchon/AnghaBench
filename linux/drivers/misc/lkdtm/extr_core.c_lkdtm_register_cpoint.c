
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct crashtype {int dummy; } ;
struct TYPE_4__ {int symbol_name; } ;
struct crashpoint {TYPE_1__ kprobe; } ;


 struct crashpoint* lkdtm_crashpoint ;
 struct crashtype const* lkdtm_crashtype ;
 int lkdtm_do_action (struct crashtype const*) ;
 TYPE_1__* lkdtm_kprobe ;
 int pr_info (char*,int ) ;
 int register_kprobe (TYPE_1__*) ;
 int unregister_kprobe (TYPE_1__*) ;

__attribute__((used)) static int lkdtm_register_cpoint(struct crashpoint *crashpoint,
     const struct crashtype *crashtype)
{
 int ret;


 if (!crashpoint->kprobe.symbol_name) {
  lkdtm_do_action(crashtype);
  return 0;
 }

 if (lkdtm_kprobe != ((void*)0))
  unregister_kprobe(lkdtm_kprobe);

 lkdtm_crashpoint = crashpoint;
 lkdtm_crashtype = crashtype;
 lkdtm_kprobe = &crashpoint->kprobe;
 ret = register_kprobe(lkdtm_kprobe);
 if (ret < 0) {
  pr_info("Couldn't register kprobe %s\n",
   crashpoint->kprobe.symbol_name);
  lkdtm_kprobe = ((void*)0);
  lkdtm_crashpoint = ((void*)0);
  lkdtm_crashtype = ((void*)0);
 }

 return ret;
}
