
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_cont (char*) ;

__attribute__((used)) static void v4l_print_newline(const void *arg, bool write_only)
{
 pr_cont("\n");
}
