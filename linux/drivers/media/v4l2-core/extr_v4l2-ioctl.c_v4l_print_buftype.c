
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pr_cont (char*,int ) ;
 int prt_names (int ,int ) ;
 int v4l2_type_names ;

__attribute__((used)) static void v4l_print_buftype(const void *arg, bool write_only)
{
 pr_cont("type=%s\n", prt_names(*(u32 *)arg, v4l2_type_names));
}
