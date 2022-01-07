
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scifmsg {int uop; } ;
struct scif_dev {int node; TYPE_1__* sdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,int ,int ) ;

__attribute__((used)) static void
scif_msg_unknown(struct scif_dev *scifdev, struct scifmsg *msg)
{

 dev_err(&scifdev->sdev->dev,
  "Unknown message 0x%xn scifdev->node 0x%x\n",
  msg->uop, scifdev->node);
}
