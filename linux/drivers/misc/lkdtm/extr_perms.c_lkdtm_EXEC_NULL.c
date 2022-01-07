
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODE_AS_IS ;
 int execute_location (int *,int ) ;

void lkdtm_EXEC_NULL(void)
{
 execute_location(((void*)0), CODE_AS_IS);
}
