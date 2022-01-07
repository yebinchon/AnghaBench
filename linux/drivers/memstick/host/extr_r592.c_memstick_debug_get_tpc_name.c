
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** tpc_names ;

const char *memstick_debug_get_tpc_name(int tpc)
{
 return tpc_names[tpc-1];
}
