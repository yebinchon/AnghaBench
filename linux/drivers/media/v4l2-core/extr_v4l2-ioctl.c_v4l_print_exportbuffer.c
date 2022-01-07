
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_exportbuffer {int flags; int plane; int index; int type; int fd; } ;


 int pr_cont (char*,int ,int ,int ,int ,int ) ;
 int prt_names (int ,int ) ;
 int v4l2_type_names ;

__attribute__((used)) static void v4l_print_exportbuffer(const void *arg, bool write_only)
{
 const struct v4l2_exportbuffer *p = arg;

 pr_cont("fd=%d, type=%s, index=%u, plane=%u, flags=0x%08x\n",
  p->fd, prt_names(p->type, v4l2_type_names),
  p->index, p->plane, p->flags);
}
