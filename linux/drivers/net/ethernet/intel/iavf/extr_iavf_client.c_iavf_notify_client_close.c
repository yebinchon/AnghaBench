
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iavf_vsi {struct iavf_adapter* back; } ;
struct iavf_client_instance {int state; int lan_info; TYPE_3__* client; } ;
struct iavf_adapter {TYPE_1__* pdev; struct iavf_client_instance* cinst; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* close ) (int *,TYPE_3__*,int) ;} ;
struct TYPE_4__ {int dev; } ;


 int __IAVF_CLIENT_INSTANCE_OPENED ;
 int clear_bit (int ,int *) ;
 int dev_dbg (int *,char*) ;
 int iavf_client_release_qvlist (int *) ;
 int stub1 (int *,TYPE_3__*,int) ;

void iavf_notify_client_close(struct iavf_vsi *vsi, bool reset)
{
 struct iavf_adapter *adapter = vsi->back;
 struct iavf_client_instance *cinst = adapter->cinst;

 if (!cinst || !cinst->client || !cinst->client->ops ||
     !cinst->client->ops->close) {
  dev_dbg(&vsi->back->pdev->dev,
   "Cannot locate client instance close function\n");
  return;
 }
 cinst->client->ops->close(&cinst->lan_info, cinst->client, reset);
 iavf_client_release_qvlist(&cinst->lan_info);
 clear_bit(__IAVF_CLIENT_INSTANCE_OPENED, &cinst->state);
}
