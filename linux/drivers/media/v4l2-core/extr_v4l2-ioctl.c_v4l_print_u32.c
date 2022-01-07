
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pr_cont (char*,int const) ;

__attribute__((used)) static void v4l_print_u32(const void *arg, bool write_only)
{
 pr_cont("value=%u\n", *(const u32 *)arg);
}
