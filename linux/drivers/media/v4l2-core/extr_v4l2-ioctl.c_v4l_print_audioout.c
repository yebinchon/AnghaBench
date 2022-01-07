
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_audioout {int mode; int capability; int name; int index; } ;


 int pr_cont (char*,int ,...) ;

__attribute__((used)) static void v4l_print_audioout(const void *arg, bool write_only)
{
 const struct v4l2_audioout *p = arg;

 if (write_only)
  pr_cont("index=%u\n", p->index);
 else
  pr_cont("index=%u, name=%.*s, capability=0x%x, mode=0x%x\n",
   p->index, (int)sizeof(p->name), p->name,
   p->capability, p->mode);
}
