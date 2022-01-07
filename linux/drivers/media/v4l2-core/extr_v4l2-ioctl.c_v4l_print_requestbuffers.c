
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int memory; int type; int count; } ;


 int pr_cont (char*,int ,int ,int ) ;
 int prt_names (int ,int ) ;
 int v4l2_memory_names ;
 int v4l2_type_names ;

__attribute__((used)) static void v4l_print_requestbuffers(const void *arg, bool write_only)
{
 const struct v4l2_requestbuffers *p = arg;

 pr_cont("count=%d, type=%s, memory=%s\n",
  p->count,
  prt_names(p->type, v4l2_type_names),
  prt_names(p->memory, v4l2_memory_names));
}
