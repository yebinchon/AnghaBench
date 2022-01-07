
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node; } ;
struct scifmsg {TYPE_1__ dst; int uop; } ;
struct scif_dev {int node; int qpairs; } ;
typedef int phys_addr_t ;


 int SCIF_INIT ;
 int scif_nodeqp_send (struct scif_dev*,struct scifmsg*) ;
 int scif_setup_qp_connect_response (struct scif_dev*,int ,int ) ;

int scif_qp_response(phys_addr_t phys, struct scif_dev *scifdev)
{
 int err = 0;
 struct scifmsg msg;

 err = scif_setup_qp_connect_response(scifdev, scifdev->qpairs, phys);
 if (!err) {




  msg.uop = SCIF_INIT;
  msg.dst.node = scifdev->node;
  err = scif_nodeqp_send(scifdev, &msg);
 }
 return err;
}
