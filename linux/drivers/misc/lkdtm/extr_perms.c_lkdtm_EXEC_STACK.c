
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CODE_WRITE ;
 int EXEC_SIZE ;
 int execute_location (int *,int ) ;

void lkdtm_EXEC_STACK(void)
{
 u8 stack_area[EXEC_SIZE];
 execute_location(stack_area, CODE_WRITE);
}
