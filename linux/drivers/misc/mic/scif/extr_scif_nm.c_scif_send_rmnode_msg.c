
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int node; } ;
struct TYPE_4__ {int node; } ;
struct scifmsg {int* payload; TYPE_2__ dst; TYPE_1__ src; int uop; } ;
struct scif_dev {int dummy; } ;
struct TYPE_6__ {int nodeid; } ;


 int SCIF_NODE_REMOVE ;
 struct scif_dev* scif_dev ;
 TYPE_3__ scif_info ;
 int scif_nodeqp_send (struct scif_dev*,struct scifmsg*) ;

__attribute__((used)) static int scif_send_rmnode_msg(int node, int remove_node)
{
 struct scifmsg notif_msg;
 struct scif_dev *dev = &scif_dev[node];

 notif_msg.uop = SCIF_NODE_REMOVE;
 notif_msg.src.node = scif_info.nodeid;
 notif_msg.dst.node = node;
 notif_msg.payload[0] = remove_node;
 return scif_nodeqp_send(dev, &notif_msg);
}
