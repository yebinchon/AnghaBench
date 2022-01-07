
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_edid {int blocks; int start_block; int pad; } ;


 int pr_cont (char*,int ,int ,int ) ;

__attribute__((used)) static void v4l_print_edid(const void *arg, bool write_only)
{
 const struct v4l2_edid *p = arg;

 pr_cont("pad=%u, start_block=%u, blocks=%u\n",
  p->pad, p->start_block, p->blocks);
}
