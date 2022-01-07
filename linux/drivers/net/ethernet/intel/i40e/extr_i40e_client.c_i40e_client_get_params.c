
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct TYPE_13__ {int * qs_handle; } ;
struct TYPE_12__ {int enabled_tc; } ;
struct i40e_vsi {TYPE_9__* netdev; int id; TYPE_8__* back; TYPE_4__ info; TYPE_3__ tc_config; } ;
struct TYPE_15__ {TYPE_5__* prio_qos; } ;
struct i40e_params {int mtu; TYPE_6__ qos; } ;
struct TYPE_11__ {size_t* prioritytable; } ;
struct i40e_dcbx_config {TYPE_2__ etscfg; } ;
struct TYPE_18__ {int mtu; } ;
struct TYPE_10__ {struct i40e_dcbx_config local_dcbx_config; } ;
struct TYPE_17__ {TYPE_7__* pdev; TYPE_1__ hw; } ;
struct TYPE_16__ {int dev; } ;
struct TYPE_14__ {size_t tc; scalar_t__ qs_handle; } ;


 int BIT (size_t) ;
 int EINVAL ;
 scalar_t__ I40E_AQ_VSI_QS_HANDLE_INVALID ;
 int I40E_MAX_USER_PRIORITY ;
 int dev_err (int *,char*,size_t,int ) ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static
int i40e_client_get_params(struct i40e_vsi *vsi, struct i40e_params *params)
{
 struct i40e_dcbx_config *dcb_cfg = &vsi->back->hw.local_dcbx_config;
 int i = 0;

 for (i = 0; i < I40E_MAX_USER_PRIORITY; i++) {
  u8 tc = dcb_cfg->etscfg.prioritytable[i];
  u16 qs_handle;


  if (!(vsi->tc_config.enabled_tc & BIT(tc)))
   tc = 0;

  qs_handle = le16_to_cpu(vsi->info.qs_handle[tc]);
  params->qos.prio_qos[i].tc = tc;
  params->qos.prio_qos[i].qs_handle = qs_handle;
  if (qs_handle == I40E_AQ_VSI_QS_HANDLE_INVALID) {
   dev_err(&vsi->back->pdev->dev, "Invalid queue set handle for TC = %d, vsi id = %d\n",
    tc, vsi->id);
   return -EINVAL;
  }
 }

 params->mtu = vsi->netdev->mtu;
 return 0;
}
