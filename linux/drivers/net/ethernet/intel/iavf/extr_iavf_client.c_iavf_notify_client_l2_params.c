
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct iavf_vsi {TYPE_2__* back; } ;
struct iavf_params {int dummy; } ;
struct TYPE_9__ {struct iavf_params params; } ;
struct iavf_client_instance {TYPE_5__* client; TYPE_4__ lan_info; } ;
struct TYPE_10__ {TYPE_3__* ops; } ;
struct TYPE_8__ {int (* l2_param_change ) (TYPE_4__*,TYPE_5__*,struct iavf_params*) ;} ;
struct TYPE_7__ {TYPE_1__* pdev; struct iavf_client_instance* cinst; } ;
struct TYPE_6__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int iavf_client_get_params (struct iavf_vsi*,struct iavf_params*) ;
 int stub1 (TYPE_4__*,TYPE_5__*,struct iavf_params*) ;

void iavf_notify_client_l2_params(struct iavf_vsi *vsi)
{
 struct iavf_client_instance *cinst;
 struct iavf_params params;

 if (!vsi)
  return;

 cinst = vsi->back->cinst;

 if (!cinst || !cinst->client || !cinst->client->ops ||
     !cinst->client->ops->l2_param_change) {
  dev_dbg(&vsi->back->pdev->dev,
   "Cannot locate client instance l2_param_change function\n");
  return;
 }
 iavf_client_get_params(vsi, &params);
 cinst->lan_info.params = params;
 cinst->client->ops->l2_param_change(&cinst->lan_info, cinst->client,
         &params);
}
