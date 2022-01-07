
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u16 ;
struct TYPE_6__ {int num_tc; int hw; } ;
struct tc_mqprio_qopt_offload {int mode; TYPE_1__ qopt; } ;
struct net_device {int dummy; } ;
struct TYPE_10__ {scalar_t__* max_rate; } ;
struct TYPE_8__ {int enabled_tc; TYPE_2__* tc_info; } ;
struct i40e_vsi {int num_queue_pairs; int seid; struct i40e_pf* back; TYPE_5__ mqprio_qopt; TYPE_3__ tc_config; } ;
struct i40e_pf {int flags; TYPE_4__* pdev; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_7__ {int qcount; } ;


 int BIT (int) ;
 int EINVAL ;
 int I40E_BW_CREDIT_DIVISOR ;
 int I40E_BW_MBPS_DIVISOR ;
 int I40E_FLAG_DCB_ENABLED ;
 int I40E_FLAG_MFP_ENABLED ;
 int I40E_FLAG_MSIX_ENABLED ;
 int I40E_FLAG_TC_MQPRIO ;


 int dev_dbg (int *,char*,scalar_t__,scalar_t__,int ) ;
 int dev_info (int *,char*,int ,int ) ;
 int do_div (scalar_t__,int ) ;
 int i40e_configure_queue_channels (struct i40e_vsi*) ;
 int i40e_pf_get_num_tc (struct i40e_pf*) ;
 int i40e_quiesce_vsi (struct i40e_vsi*) ;
 int i40e_remove_queue_channels (struct i40e_vsi*) ;
 int i40e_set_bw_limit (struct i40e_vsi*,int ,scalar_t__) ;
 int i40e_unquiesce_vsi (struct i40e_vsi*) ;
 int i40e_validate_mqprio_qopt (struct i40e_vsi*,struct tc_mqprio_qopt_offload*) ;
 int i40e_vsi_config_tc (struct i40e_vsi*,int) ;
 int i40e_vsi_set_default_tc_config (struct i40e_vsi*) ;
 int memcpy (TYPE_5__*,struct tc_mqprio_qopt_offload*,int) ;
 int netdev_info (struct net_device*,char*,...) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int i40e_setup_tc(struct net_device *netdev, void *type_data)
{
 struct tc_mqprio_qopt_offload *mqprio_qopt = type_data;
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_pf *pf = vsi->back;
 u8 enabled_tc = 0, num_tc, hw;
 bool need_reset = 0;
 int old_queue_pairs;
 int ret = -EINVAL;
 u16 mode;
 int i;

 old_queue_pairs = vsi->num_queue_pairs;
 num_tc = mqprio_qopt->qopt.num_tc;
 hw = mqprio_qopt->qopt.hw;
 mode = mqprio_qopt->mode;
 if (!hw) {
  pf->flags &= ~I40E_FLAG_TC_MQPRIO;
  memcpy(&vsi->mqprio_qopt, mqprio_qopt, sizeof(*mqprio_qopt));
  goto config_tc;
 }


 if (pf->flags & I40E_FLAG_MFP_ENABLED) {
  netdev_info(netdev,
       "Configuring TC not supported in MFP mode\n");
  return ret;
 }
 switch (mode) {
 case 128:
  pf->flags &= ~I40E_FLAG_TC_MQPRIO;


  if (!(pf->flags & I40E_FLAG_DCB_ENABLED)) {
   netdev_info(netdev,
        "DCB is not enabled for adapter\n");
   return ret;
  }


  if (num_tc > i40e_pf_get_num_tc(pf)) {
   netdev_info(netdev,
        "TC count greater than enabled on link for adapter\n");
   return ret;
  }
  break;
 case 129:
  if (pf->flags & I40E_FLAG_DCB_ENABLED) {
   netdev_info(netdev,
        "Full offload of TC Mqprio options is not supported when DCB is enabled\n");
   return ret;
  }
  if (!(pf->flags & I40E_FLAG_MSIX_ENABLED))
   return ret;
  ret = i40e_validate_mqprio_qopt(vsi, mqprio_qopt);
  if (ret)
   return ret;
  memcpy(&vsi->mqprio_qopt, mqprio_qopt,
         sizeof(*mqprio_qopt));
  pf->flags |= I40E_FLAG_TC_MQPRIO;
  pf->flags &= ~I40E_FLAG_DCB_ENABLED;
  break;
 default:
  return -EINVAL;
 }

config_tc:

 for (i = 0; i < num_tc; i++)
  enabled_tc |= BIT(i);


 if (enabled_tc == vsi->tc_config.enabled_tc &&
     mode != 129)
  return 0;


 i40e_quiesce_vsi(vsi);

 if (!hw && !(pf->flags & I40E_FLAG_TC_MQPRIO))
  i40e_remove_queue_channels(vsi);


 ret = i40e_vsi_config_tc(vsi, enabled_tc);
 if (ret) {
  netdev_info(netdev, "Failed configuring TC for VSI seid=%d\n",
       vsi->seid);
  need_reset = 1;
  goto exit;
 } else {
  dev_info(&vsi->back->pdev->dev,
    "Setup channel (id:%u) utilizing num_queues %d\n",
    vsi->seid, vsi->tc_config.tc_info[0].qcount);
 }

 if (pf->flags & I40E_FLAG_TC_MQPRIO) {
  if (vsi->mqprio_qopt.max_rate[0]) {
   u64 max_tx_rate = vsi->mqprio_qopt.max_rate[0];

   do_div(max_tx_rate, I40E_BW_MBPS_DIVISOR);
   ret = i40e_set_bw_limit(vsi, vsi->seid, max_tx_rate);
   if (!ret) {
    u64 credits = max_tx_rate;

    do_div(credits, I40E_BW_CREDIT_DIVISOR);
    dev_dbg(&vsi->back->pdev->dev,
     "Set tx rate of %llu Mbps (count of 50Mbps %llu) for vsi->seid %u\n",
     max_tx_rate,
     credits,
     vsi->seid);
   } else {
    need_reset = 1;
    goto exit;
   }
  }
  ret = i40e_configure_queue_channels(vsi);
  if (ret) {
   vsi->num_queue_pairs = old_queue_pairs;
   netdev_info(netdev,
        "Failed configuring queue channels\n");
   need_reset = 1;
   goto exit;
  }
 }

exit:

 if (need_reset) {
  i40e_vsi_set_default_tc_config(vsi);
  need_reset = 0;
 }


 i40e_unquiesce_vsi(vsi);
 return ret;
}
