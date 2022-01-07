
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ican3_msg {int* data; } ;
struct TYPE_2__ {int rxerr; int txerr; } ;
struct ican3_dev {int termination_enabled; int ndev; int termination_comp; int buserror_comp; TYPE_1__ bec; } ;


 int HWCONF_TERMINATE_ON ;



 int complete (int *) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static void ican3_handle_inquiry(struct ican3_dev *mod, struct ican3_msg *msg)
{
 switch (msg->data[0]) {
 case 129:
 case 130:
  mod->bec.rxerr = msg->data[5];
  mod->bec.txerr = msg->data[6];
  complete(&mod->buserror_comp);
  break;
 case 128:
  mod->termination_enabled = msg->data[6] & HWCONF_TERMINATE_ON;
  complete(&mod->termination_comp);
  break;
 default:
  netdev_err(mod->ndev, "received an unknown inquiry response\n");
  break;
 }
}
