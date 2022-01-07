
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scifmsg {scalar_t__ uop; } ;
struct scif_dev {scalar_t__ exit; } ;
struct device {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct device*) ;
 scalar_t__ OP_IDLE ;
 int PTR_ERR (struct device*) ;
 scalar_t__ SCIF_EXIT_ACK ;
 int _scif_nodeqp_send (struct scif_dev*,struct scifmsg*) ;
 struct device* scif_get_peer_dev (struct scif_dev*) ;
 int scif_put_peer_dev (struct device*) ;

int scif_nodeqp_send(struct scif_dev *scifdev, struct scifmsg *msg)
{
 int err;
 struct device *spdev = ((void*)0);

 if (msg->uop > SCIF_EXIT_ACK) {

  if (OP_IDLE != scifdev->exit)
   return -ENODEV;
  spdev = scif_get_peer_dev(scifdev);
  if (IS_ERR(spdev)) {
   err = PTR_ERR(spdev);
   return err;
  }
 }
 err = _scif_nodeqp_send(scifdev, msg);
 if (msg->uop > SCIF_EXIT_ACK)
  scif_put_peer_dev(spdev);
 return err;
}
