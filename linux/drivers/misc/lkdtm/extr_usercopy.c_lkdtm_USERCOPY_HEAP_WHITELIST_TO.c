
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_usercopy_heap_whitelist (int) ;

void lkdtm_USERCOPY_HEAP_WHITELIST_TO(void)
{
 do_usercopy_heap_whitelist(1);
}
