
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct scif_dev {int disconn_rescnt; int disconn_wq; } ;
struct TYPE_2__ {size_t maxid; } ;


 size_t SCIF_MGMT_NODE ;
 int SCIF_NODE_ALIVE_TIMEOUT ;
 scalar_t__ _scifdev_alive (struct scif_dev*) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 struct scif_dev* scif_dev ;
 TYPE_1__ scif_info ;
 int scif_send_exit (struct scif_dev*) ;
 int scif_send_rmnode_msg (size_t,size_t) ;
 int wait_event_timeout (int ,int,int ) ;

void scif_disconnect_node(u32 node_id, bool mgmt_initiated)
{
 int ret;
 int msg_cnt = 0;
 u32 i = 0;
 struct scif_dev *scifdev = &scif_dev[node_id];

 if (!node_id)
  return;

 atomic_set(&scifdev->disconn_rescnt, 0);


 for (i = 1; i <= scif_info.maxid; i++) {
  if (i == node_id)
   continue;
  ret = scif_send_rmnode_msg(i, node_id);
  if (!ret)
   msg_cnt++;
 }

 ret = wait_event_timeout(scifdev->disconn_wq,
     (atomic_read(&scifdev->disconn_rescnt)
     == msg_cnt), SCIF_NODE_ALIVE_TIMEOUT);

 if (mgmt_initiated && _scifdev_alive(scifdev))




  scif_send_exit(scifdev);
 atomic_set(&scifdev->disconn_rescnt, 0);

 ret = scif_send_rmnode_msg(SCIF_MGMT_NODE, node_id);
 if (!ret)

  wait_event_timeout(scifdev->disconn_wq,
       (atomic_read(&scifdev->disconn_rescnt) == 1),
       SCIF_NODE_ALIVE_TIMEOUT);
}
