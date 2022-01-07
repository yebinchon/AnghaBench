
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int capabilities; int status; scalar_t__ std; int tuner; int audioset; int type; int name; int index; } ;


 int pr_cont (char*,int ,int,int ,int ,int ,int ,unsigned long long,int ,int ) ;

__attribute__((used)) static void v4l_print_enuminput(const void *arg, bool write_only)
{
 const struct v4l2_input *p = arg;

 pr_cont("index=%u, name=%.*s, type=%u, audioset=0x%x, tuner=%u, std=0x%08Lx, status=0x%x, capabilities=0x%x\n",
  p->index, (int)sizeof(p->name), p->name, p->type, p->audioset,
  p->tuner, (unsigned long long)p->std, p->status,
  p->capabilities);
}
