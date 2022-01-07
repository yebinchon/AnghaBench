
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_ext_controls {int count; TYPE_1__* controls; int request_fd; int error_idx; int which; } ;
struct TYPE_2__ {int size; int id; int value; } ;


 int pr_cont (char*,...) ;

__attribute__((used)) static void v4l_print_ext_controls(const void *arg, bool write_only)
{
 const struct v4l2_ext_controls *p = arg;
 int i;

 pr_cont("which=0x%x, count=%d, error_idx=%d, request_fd=%d",
   p->which, p->count, p->error_idx, p->request_fd);
 for (i = 0; i < p->count; i++) {
  if (!p->controls[i].size)
   pr_cont(", id/val=0x%x/0x%x",
    p->controls[i].id, p->controls[i].value);
  else
   pr_cont(", id/size=0x%x/%u",
    p->controls[i].id, p->controls[i].size);
 }
 pr_cont("\n");
}
