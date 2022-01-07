
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {int * state; scalar_t__ netdev_registered; } ;
struct i40e_pf {size_t lan_vsi; int * state; struct i40e_client_instance* cinst; struct i40e_vsi** vsi; } ;
struct i40e_client_instance {int lan_info; int state; } ;
struct i40e_client {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* open ) (int *,struct i40e_client*) ;} ;


 int I40E_CLIENT_VSI_FLAG_TCP_ENABLE ;
 int __I40E_CLIENT_INSTANCE_OPENED ;
 int __I40E_CLIENT_SERVICE_REQUESTED ;
 int __I40E_CONFIG_BUSY ;
 int __I40E_DOWN ;
 int __I40E_VSI_DOWN ;
 int clear_bit (int ,int *) ;
 int i40e_client_del_instance (struct i40e_pf*) ;
 int i40e_client_update_vsi_ctxt (int *,struct i40e_client*,int ,int ,int ,int ) ;
 struct i40e_client* registered_client ;
 int set_bit (int ,int *) ;
 int stub1 (int *,struct i40e_client*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void i40e_client_subtask(struct i40e_pf *pf)
{
 struct i40e_client *client = registered_client;
 struct i40e_client_instance *cdev;
 struct i40e_vsi *vsi = pf->vsi[pf->lan_vsi];
 int ret = 0;

 if (!test_and_clear_bit(__I40E_CLIENT_SERVICE_REQUESTED, pf->state))
  return;
 cdev = pf->cinst;


 if (test_bit(__I40E_DOWN, pf->state) ||
     test_bit(__I40E_CONFIG_BUSY, pf->state))
  return;

 if (!client || !cdev)
  return;




 if (!test_bit(__I40E_CLIENT_INSTANCE_OPENED, &cdev->state)) {
  if (vsi->netdev_registered &&
      client->ops && client->ops->open) {
   set_bit(__I40E_CLIENT_INSTANCE_OPENED, &cdev->state);
   ret = client->ops->open(&cdev->lan_info, client);
   if (ret) {

    clear_bit(__I40E_CLIENT_INSTANCE_OPENED,
       &cdev->state);
    i40e_client_del_instance(pf);
   }
  }
 }



 if (test_bit(__I40E_VSI_DOWN, vsi->state))
  i40e_client_update_vsi_ctxt(&cdev->lan_info, client,
         0, 0, 0,
         I40E_CLIENT_VSI_FLAG_TCP_ENABLE);
 else
  i40e_client_update_vsi_ctxt(&cdev->lan_info, client,
         0, 0,
         I40E_CLIENT_VSI_FLAG_TCP_ENABLE,
         I40E_CLIENT_VSI_FLAG_TCP_ENABLE);
}
