
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct i40e_pf {TYPE_1__* pdev; struct i40e_client_instance* cinst; } ;
struct i40e_client_instance {TYPE_3__* client; int lan_info; int state; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* vf_enable ) (int *,TYPE_3__*,int ) ;} ;
struct TYPE_4__ {int dev; } ;


 int __I40E_CLIENT_INSTANCE_OPENED ;
 int dev_dbg (int *,char*) ;
 int stub1 (int *,TYPE_3__*,int ) ;
 int test_bit (int ,int *) ;

void i40e_notify_client_of_vf_enable(struct i40e_pf *pf, u32 num_vfs)
{
 struct i40e_client_instance *cdev = pf->cinst;

 if (!cdev || !cdev->client)
  return;
 if (!cdev->client->ops || !cdev->client->ops->vf_enable) {
  dev_dbg(&pf->pdev->dev,
   "Cannot locate client instance VF enable routine\n");
  return;
 }
 if (!test_bit(__I40E_CLIENT_INSTANCE_OPENED,
        &cdev->state)) {
  dev_dbg(&pf->pdev->dev, "Client is not open, abort vf-enable\n");
  return;
 }
 cdev->client->ops->vf_enable(&cdev->lan_info, cdev->client, num_vfs);
}
