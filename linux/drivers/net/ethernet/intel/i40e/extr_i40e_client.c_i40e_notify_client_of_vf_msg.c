
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {TYPE_1__* pdev; struct i40e_client_instance* cinst; } ;
struct i40e_client_instance {TYPE_3__* client; int lan_info; int state; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* virtchnl_receive ) (int *,TYPE_3__*,int ,int *,int ) ;} ;
struct TYPE_4__ {int dev; } ;


 int __I40E_CLIENT_INSTANCE_OPENED ;
 int dev_dbg (int *,char*) ;
 int stub1 (int *,TYPE_3__*,int ,int *,int ) ;
 int test_bit (int ,int *) ;

void
i40e_notify_client_of_vf_msg(struct i40e_vsi *vsi, u32 vf_id, u8 *msg, u16 len)
{
 struct i40e_pf *pf = vsi->back;
 struct i40e_client_instance *cdev = pf->cinst;

 if (!cdev || !cdev->client)
  return;
 if (!cdev->client->ops || !cdev->client->ops->virtchnl_receive) {
  dev_dbg(&pf->pdev->dev,
   "Cannot locate client instance virtual channel receive routine\n");
  return;
 }
 if (!test_bit(__I40E_CLIENT_INSTANCE_OPENED, &cdev->state)) {
  dev_dbg(&pf->pdev->dev, "Client is not open, abort virtchnl_receive\n");
  return;
 }
 cdev->client->ops->virtchnl_receive(&cdev->lan_info, cdev->client,
         vf_id, msg, len);
}
