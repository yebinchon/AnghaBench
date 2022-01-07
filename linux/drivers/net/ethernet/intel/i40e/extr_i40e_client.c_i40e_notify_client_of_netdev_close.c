
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {TYPE_1__* pdev; struct i40e_client_instance* cinst; } ;
struct i40e_client_instance {int lan_info; int state; TYPE_3__* client; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* close ) (int *,TYPE_3__*,int) ;} ;
struct TYPE_4__ {int dev; } ;


 int __I40E_CLIENT_INSTANCE_OPENED ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int *,char*) ;
 int i40e_client_release_qvlist (int *) ;
 int stub1 (int *,TYPE_3__*,int) ;

void i40e_notify_client_of_netdev_close(struct i40e_vsi *vsi, bool reset)
{
 struct i40e_pf *pf = vsi->back;
 struct i40e_client_instance *cdev = pf->cinst;

 if (!cdev || !cdev->client)
  return;
 if (!cdev->client->ops || !cdev->client->ops->close) {
  dev_dbg(&vsi->back->pdev->dev,
   "Cannot locate client instance close routine\n");
  return;
 }
 cdev->client->ops->close(&cdev->lan_info, cdev->client, reset);
 clear_bit(__I40E_CLIENT_INSTANCE_OPENED, &cdev->state);
 i40e_client_release_qvlist(&cdev->lan_info);
}
