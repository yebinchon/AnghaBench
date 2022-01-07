
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cx18 {TYPE_2__* streams; } ;
struct TYPE_3__ {scalar_t__ v4l2_dev; } ;
struct TYPE_4__ {int out_work_order; TYPE_1__ video_dev; } ;


 int CX18_MAX_STREAMS ;
 int cancel_work_sync (int *) ;

__attribute__((used)) static void cx18_cancel_out_work_orders(struct cx18 *cx)
{
 int i;
 for (i = 0; i < CX18_MAX_STREAMS; i++)
  if (cx->streams[i].video_dev.v4l2_dev)
   cancel_work_sync(&cx->streams[i].out_work_order);
}
