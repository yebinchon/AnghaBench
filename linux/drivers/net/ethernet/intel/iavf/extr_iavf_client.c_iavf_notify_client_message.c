
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct iavf_vsi {TYPE_3__* back; } ;
struct iavf_client_instance {TYPE_4__* client; int lan_info; } ;
struct TYPE_8__ {TYPE_2__* ops; } ;
struct TYPE_7__ {TYPE_1__* pdev; struct iavf_client_instance* cinst; } ;
struct TYPE_6__ {int (* virtchnl_receive ) (int *,TYPE_4__*,int *,int ) ;} ;
struct TYPE_5__ {int dev; } ;


 int dev_dbg (int *,char*) ;
 int stub1 (int *,TYPE_4__*,int *,int ) ;

void iavf_notify_client_message(struct iavf_vsi *vsi, u8 *msg, u16 len)
{
 struct iavf_client_instance *cinst;

 if (!vsi)
  return;

 cinst = vsi->back->cinst;
 if (!cinst || !cinst->client || !cinst->client->ops ||
     !cinst->client->ops->virtchnl_receive) {
  dev_dbg(&vsi->back->pdev->dev,
   "Cannot locate client instance virtchnl_receive function\n");
  return;
 }
 cinst->client->ops->virtchnl_receive(&cinst->lan_info, cinst->client,
          msg, len);
}
