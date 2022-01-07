
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_output {int capabilities; scalar_t__ std; int modulator; int audioset; int type; int name; int index; } ;


 int pr_cont (char*,int ,int,int ,int ,int ,int ,unsigned long long,int ) ;

__attribute__((used)) static void v4l_print_enumoutput(const void *arg, bool write_only)
{
 const struct v4l2_output *p = arg;

 pr_cont("index=%u, name=%.*s, type=%u, audioset=0x%x, modulator=%u, std=0x%08Lx, capabilities=0x%x\n",
  p->index, (int)sizeof(p->name), p->name, p->type, p->audioset,
  p->modulator, (unsigned long long)p->std, p->capabilities);
}
