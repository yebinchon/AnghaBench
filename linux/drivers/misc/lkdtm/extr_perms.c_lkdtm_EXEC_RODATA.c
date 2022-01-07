
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODE_AS_IS ;
 int execute_location (int ,int ) ;
 int lkdtm_rodata_do_nothing ;

void lkdtm_EXEC_RODATA(void)
{
 execute_location(lkdtm_rodata_do_nothing, CODE_AS_IS);
}
