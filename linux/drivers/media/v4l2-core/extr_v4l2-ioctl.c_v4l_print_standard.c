
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int denominator; int numerator; } ;
struct v4l2_standard {int framelines; TYPE_1__ frameperiod; int name; scalar_t__ id; int index; } ;


 int pr_cont (char*,int ,unsigned long long,int,int ,int ,int ,int ) ;

__attribute__((used)) static void v4l_print_standard(const void *arg, bool write_only)
{
 const struct v4l2_standard *p = arg;

 pr_cont("index=%u, id=0x%Lx, name=%.*s, fps=%u/%u, framelines=%u\n",
  p->index,
  (unsigned long long)p->id, (int)sizeof(p->name), p->name,
  p->frameperiod.numerator,
  p->frameperiod.denominator,
  p->framelines);
}
