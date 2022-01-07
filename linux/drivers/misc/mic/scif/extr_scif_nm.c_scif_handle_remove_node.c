
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scif_dev {int dummy; } ;


 struct scif_dev* scif_dev ;
 scalar_t__ scif_peer_unregister_device (struct scif_dev*) ;
 int scif_send_acks (struct scif_dev*) ;

void scif_handle_remove_node(int node)
{
 struct scif_dev *scifdev = &scif_dev[node];

 if (scif_peer_unregister_device(scifdev))
  scif_send_acks(scifdev);
}
