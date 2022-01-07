
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iavf_vsi {int qs_handle; TYPE_1__* back; TYPE_4__* netdev; } ;
struct TYPE_7__ {TYPE_2__* prio_qos; } ;
struct iavf_params {TYPE_3__ qos; int link_up; int mtu; } ;
struct TYPE_8__ {int mtu; } ;
struct TYPE_6__ {int qs_handle; scalar_t__ tc; } ;
struct TYPE_5__ {int link_up; } ;


 int IAVF_MAX_USER_PRIORITY ;
 int memset (struct iavf_params*,int ,int) ;

__attribute__((used)) static
void iavf_client_get_params(struct iavf_vsi *vsi, struct iavf_params *params)
{
 int i;

 memset(params, 0, sizeof(struct iavf_params));
 params->mtu = vsi->netdev->mtu;
 params->link_up = vsi->back->link_up;

 for (i = 0; i < IAVF_MAX_USER_PRIORITY; i++) {
  params->qos.prio_qos[i].tc = 0;
  params->qos.prio_qos[i].qs_handle = vsi->qs_handle;
 }
}
