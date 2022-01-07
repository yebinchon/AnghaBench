
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int node; } ;
struct TYPE_4__ {int node; } ;
struct scifmsg {TYPE_2__ dst; TYPE_1__ src; int uop; } ;
struct scif_dev {scalar_t__ exit; int node; } ;
struct TYPE_6__ {int exitwq; int nodeid; } ;


 scalar_t__ OP_COMPLETED ;
 scalar_t__ OP_IDLE ;
 scalar_t__ OP_IN_PROGRESS ;
 int SCIF_EXIT ;
 int SCIF_NODE_ALIVE_TIMEOUT ;
 TYPE_3__ scif_info ;
 int scif_nodeqp_send (struct scif_dev*,struct scifmsg*) ;
 int wait_event_timeout (int ,int,int ) ;

void scif_send_exit(struct scif_dev *scifdev)
{
 struct scifmsg msg;
 int ret;

 scifdev->exit = OP_IN_PROGRESS;
 msg.uop = SCIF_EXIT;
 msg.src.node = scif_info.nodeid;
 msg.dst.node = scifdev->node;
 ret = scif_nodeqp_send(scifdev, &msg);
 if (ret)
  goto done;

 wait_event_timeout(scif_info.exitwq, scifdev->exit == OP_COMPLETED,
      SCIF_NODE_ALIVE_TIMEOUT);
done:
 scifdev->exit = OP_IDLE;
}
