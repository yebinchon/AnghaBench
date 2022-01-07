
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_control {int value; int id; } ;


 int pr_cont (char*,int ,int ) ;

__attribute__((used)) static void v4l_print_control(const void *arg, bool write_only)
{
 const struct v4l2_control *p = arg;

 pr_cont("id=0x%x, value=%d\n", p->id, p->value);
}
