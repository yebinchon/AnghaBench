
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_event_subscription {int flags; int id; int type; } ;


 int pr_cont (char*,int ,int ,int ) ;

__attribute__((used)) static void v4l_print_event_subscription(const void *arg, bool write_only)
{
 const struct v4l2_event_subscription *p = arg;

 pr_cont("type=0x%x, id=0x%x, flags=0x%x\n",
   p->type, p->id, p->flags);
}
