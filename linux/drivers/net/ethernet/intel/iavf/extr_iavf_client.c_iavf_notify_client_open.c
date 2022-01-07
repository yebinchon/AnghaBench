
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iavf_vsi {struct iavf_adapter* back; } ;
struct iavf_client_instance {int state; TYPE_3__* client; int lan_info; } ;
struct iavf_adapter {TYPE_1__* pdev; struct iavf_client_instance* cinst; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* open ) (int *,TYPE_3__*) ;} ;
struct TYPE_4__ {int dev; } ;


 int __IAVF_CLIENT_INSTANCE_OPENED ;
 int dev_dbg (int *,char*) ;
 int set_bit (int ,int *) ;
 int stub1 (int *,TYPE_3__*) ;
 int test_bit (int ,int *) ;

void iavf_notify_client_open(struct iavf_vsi *vsi)
{
 struct iavf_adapter *adapter = vsi->back;
 struct iavf_client_instance *cinst = adapter->cinst;
 int ret;

 if (!cinst || !cinst->client || !cinst->client->ops ||
     !cinst->client->ops->open) {
  dev_dbg(&vsi->back->pdev->dev,
   "Cannot locate client instance open function\n");
  return;
 }
 if (!(test_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state))) {
  ret = cinst->client->ops->open(&cinst->lan_info, cinst->client);
  if (!ret)
   set_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state);
 }
}
