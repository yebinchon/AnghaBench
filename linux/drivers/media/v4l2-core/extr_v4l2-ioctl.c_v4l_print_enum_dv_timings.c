
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_enum_dv_timings {int timings; int index; } ;


 int pr_cont (char*,int ) ;
 int v4l_print_dv_timings (int *,int) ;

__attribute__((used)) static void v4l_print_enum_dv_timings(const void *arg, bool write_only)
{
 const struct v4l2_enum_dv_timings *p = arg;

 pr_cont("index=%u, ", p->index);
 v4l_print_dv_timings(&p->timings, write_only);
}
