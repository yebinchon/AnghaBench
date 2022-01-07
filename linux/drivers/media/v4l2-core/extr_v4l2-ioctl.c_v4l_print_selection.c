
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int top; int left; int height; int width; } ;
struct v4l2_selection {TYPE_1__ r; int flags; int target; int type; } ;


 int pr_cont (char*,int ,int ,int ,int ,int ,int ,int ) ;
 int prt_names (int ,int ) ;
 int v4l2_type_names ;

__attribute__((used)) static void v4l_print_selection(const void *arg, bool write_only)
{
 const struct v4l2_selection *p = arg;

 pr_cont("type=%s, target=%d, flags=0x%x, wxh=%dx%d, x,y=%d,%d\n",
  prt_names(p->type, v4l2_type_names),
  p->target, p->flags,
  p->r.width, p->r.height, p->r.left, p->r.top);
}
