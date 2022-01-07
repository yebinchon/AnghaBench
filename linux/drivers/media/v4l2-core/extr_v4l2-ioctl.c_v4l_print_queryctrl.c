
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_queryctrl {int flags; int default_value; int step; int maximum; int minimum; int name; int type; int id; } ;


 int pr_cont (char*,int ,int ,int,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void v4l_print_queryctrl(const void *arg, bool write_only)
{
 const struct v4l2_queryctrl *p = arg;

 pr_cont("id=0x%x, type=%d, name=%.*s, min/max=%d/%d, step=%d, default=%d, flags=0x%08x\n",
   p->id, p->type, (int)sizeof(p->name), p->name,
   p->minimum, p->maximum,
   p->step, p->default_value, p->flags);
}
