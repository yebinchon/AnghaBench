
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_usercopy_stack (int,int) ;

void lkdtm_USERCOPY_STACK_FRAME_FROM(void)
{
 do_usercopy_stack(0, 1);
}
