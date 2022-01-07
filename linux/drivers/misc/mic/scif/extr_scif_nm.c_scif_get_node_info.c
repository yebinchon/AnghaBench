
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_5__ {size_t node; } ;
struct TYPE_4__ {int node; } ;
struct scifmsg {scalar_t__* payload; TYPE_2__ dst; TYPE_1__ src; int uop; } ;
struct TYPE_6__ {int nodeid; } ;


 int DECLARE_COMPLETION_ONSTACK (int ) ;
 int SCIF_GET_NODE_INFO ;
 size_t SCIF_MGMT_NODE ;
 int node_info ;
 int * scif_dev ;
 TYPE_3__ scif_info ;
 scalar_t__ scif_nodeqp_send (int *,struct scifmsg*) ;
 int wait_for_completion (int *) ;

void scif_get_node_info(void)
{
 struct scifmsg msg;
 DECLARE_COMPLETION_ONSTACK(node_info);

 msg.uop = SCIF_GET_NODE_INFO;
 msg.src.node = scif_info.nodeid;
 msg.dst.node = SCIF_MGMT_NODE;
 msg.payload[3] = (u64)&node_info;

 if ((scif_nodeqp_send(&scif_dev[SCIF_MGMT_NODE], &msg)))
  return;


 wait_for_completion(&node_info);
}
