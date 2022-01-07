
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_frequency {int frequency; int type; int tuner; } ;


 int pr_cont (char*,int ,int ,int ) ;

__attribute__((used)) static void v4l_print_frequency(const void *arg, bool write_only)
{
 const struct v4l2_frequency *p = arg;

 pr_cont("tuner=%u, type=%u, frequency=%u\n",
    p->tuner, p->type, p->frequency);
}
