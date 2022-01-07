
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cpl_handler_func ;


 unsigned int NUM_CPL_CMDS ;
 scalar_t__* cpl_handlers ;
 scalar_t__ do_bad_cpl ;
 int pr_err (char*,unsigned int) ;

void t3_register_cpl_handler(unsigned int opcode, cpl_handler_func h)
{
 if (opcode < NUM_CPL_CMDS)
  cpl_handlers[opcode] = h ? h : do_bad_cpl;
 else
  pr_err("T3C: handler registration for opcode %x failed\n",
         opcode);
}
