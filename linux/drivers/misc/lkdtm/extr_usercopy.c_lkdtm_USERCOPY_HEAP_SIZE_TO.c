
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_usercopy_heap_size (int) ;

void lkdtm_USERCOPY_HEAP_SIZE_TO(void)
{
 do_usercopy_heap_size(1);
}
