
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_hw_freq_seek {int rangehigh; int rangelow; int spacing; int wrap_around; int seek_upward; int type; int tuner; } ;


 int pr_cont (char*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void v4l_print_hw_freq_seek(const void *arg, bool write_only)
{
 const struct v4l2_hw_freq_seek *p = arg;

 pr_cont("tuner=%u, type=%u, seek_upward=%u, wrap_around=%u, spacing=%u, rangelow=%u, rangehigh=%u\n",
  p->tuner, p->type, p->seek_upward, p->wrap_around, p->spacing,
  p->rangelow, p->rangehigh);
}
