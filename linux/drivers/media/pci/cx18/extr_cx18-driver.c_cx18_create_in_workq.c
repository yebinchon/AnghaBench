
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
struct cx18 {int in_work_queue; int in_workq_name; TYPE_1__ v4l2_dev; } ;


 int CX18_ERR (char*) ;
 int ENOMEM ;
 int alloc_ordered_workqueue (char*,int ,int ) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static int cx18_create_in_workq(struct cx18 *cx)
{
 snprintf(cx->in_workq_name, sizeof(cx->in_workq_name), "%s-in",
   cx->v4l2_dev.name);
 cx->in_work_queue = alloc_ordered_workqueue("%s", 0, cx->in_workq_name);
 if (!cx->in_work_queue) {
  CX18_ERR("Unable to create incoming mailbox handler thread\n");
  return -ENOMEM;
 }
 return 0;
}
