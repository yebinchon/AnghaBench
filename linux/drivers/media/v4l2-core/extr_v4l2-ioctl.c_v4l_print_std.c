
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_cont (char*,unsigned long long const) ;

__attribute__((used)) static void v4l_print_std(const void *arg, bool write_only)
{
 pr_cont("std=0x%08Lx\n", *(const long long unsigned *)arg);
}
