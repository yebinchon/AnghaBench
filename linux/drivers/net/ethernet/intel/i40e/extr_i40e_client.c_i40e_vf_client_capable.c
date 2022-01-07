
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
struct TYPE_5__ {int (* vf_capable ) (int *,TYPE_3__*,int ) ;} ;
struct TYPE_4__ {int dev; } ;


 int __I40E_CLIENT_INSTANCE_OPENED ;
 int dev_dbg (int *,char*) ;
 int stub1 (int *,TYPE_3__*,int ) ;
 int test_bit (int ,int *) ;

int i40e_vf_client_capable(struct i40e_pf *pf, u32 vf_id)
{
 struct i40e_client_instance *cdev = pf->cinst;
 int capable = 0;

 if (!cdev || !cdev->client)
  goto out;
 if (!cdev->client->ops || !cdev->client->ops->vf_capable) {
  dev_dbg(&pf->pdev->dev,
   "Cannot locate client instance VF capability routine\n");
  goto out;
 }
 if (!test_bit(__I40E_CLIENT_INSTANCE_OPENED, &cdev->state))
  goto out;

 capable = cdev->client->ops->vf_capable(&cdev->lan_info,
      cdev->client,
      vf_id);
out:
 return capable;
}
