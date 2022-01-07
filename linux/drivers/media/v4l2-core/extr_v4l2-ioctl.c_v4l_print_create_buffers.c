
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_create_buffers {int format; int memory; int count; int index; } ;


 int pr_cont (char*,int ,int ,int ) ;
 int prt_names (int ,int ) ;
 int v4l2_memory_names ;
 int v4l_print_format (int *,int) ;

__attribute__((used)) static void v4l_print_create_buffers(const void *arg, bool write_only)
{
 const struct v4l2_create_buffers *p = arg;

 pr_cont("index=%d, count=%d, memory=%s, ",
   p->index, p->count,
   prt_names(p->memory, v4l2_memory_names));
 v4l_print_format(&p->format, write_only);
}
