
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * args; } ;
struct cx18_in_work_order {char* str; TYPE_1__ mb; } ;
struct cx18 {int i_flags; } ;


 int CX18_DEBUG_INFO (char*,int ,char*) ;
 int CX18_F_I_LOADED_FW ;
 int CX18_INFO (char*,char*) ;
 char* strchr (char*,char) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void epu_debug(struct cx18 *cx, struct cx18_in_work_order *order)
{
 char *p;
 char *str = order->str;

 CX18_DEBUG_INFO("%x %s\n", order->mb.args[0], str);
 p = strchr(str, '.');
 if (!test_bit(CX18_F_I_LOADED_FW, &cx->i_flags) && p && p > str)
  CX18_INFO("FW version: %s\n", p - 1);
}
