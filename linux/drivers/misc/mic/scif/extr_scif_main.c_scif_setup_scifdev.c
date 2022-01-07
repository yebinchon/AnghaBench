
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scif_dev {int node; int spdev; int p2p; int qp_dwork; int p2p_dwork; int peer_add_work; int lock; int disconn_wq; int exit; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MAX_SCIF_NODES ;
 int OP_IDLE ;
 int RCU_INIT_POINTER (int ,int *) ;
 int init_waitqueue_head (int *) ;
 struct scif_dev* kcalloc (int,int,int ) ;
 int mutex_init (int *) ;
 int scif_add_peer_device ;
 struct scif_dev* scif_dev ;
 int scif_poll_qp_state ;
 int scif_qp_setup_handler ;

__attribute__((used)) static int scif_setup_scifdev(void)
{


 int i;
 u8 num_nodes = 129;

 scif_dev = kcalloc(num_nodes, sizeof(*scif_dev), GFP_KERNEL);
 if (!scif_dev)
  return -ENOMEM;
 for (i = 0; i < num_nodes; i++) {
  struct scif_dev *scifdev = &scif_dev[i];

  scifdev->node = i;
  scifdev->exit = OP_IDLE;
  init_waitqueue_head(&scifdev->disconn_wq);
  mutex_init(&scifdev->lock);
  INIT_WORK(&scifdev->peer_add_work, scif_add_peer_device);
  INIT_DELAYED_WORK(&scifdev->p2p_dwork,
      scif_poll_qp_state);
  INIT_DELAYED_WORK(&scifdev->qp_dwork,
      scif_qp_setup_handler);
  INIT_LIST_HEAD(&scifdev->p2p);
  RCU_INIT_POINTER(scifdev->spdev, ((void*)0));
 }
 return 0;
}
