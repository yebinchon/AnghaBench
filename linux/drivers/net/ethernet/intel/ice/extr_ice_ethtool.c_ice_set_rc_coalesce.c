
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ice_vsi {int netdev; struct ice_pf* back; } ;
struct ice_ring_container {int itr_setting; int target_itr; TYPE_2__* ring; } ;
struct TYPE_8__ {int intrl_gran; } ;
struct ice_pf {TYPE_3__* pdev; TYPE_4__ hw; } ;
struct ethtool_coalesce {int use_adaptive_rx_coalesce; int rx_coalesce_usecs; int use_adaptive_tx_coalesce; int tx_coalesce_usecs; int tx_coalesce_usecs_high; int rx_coalesce_usecs_high; } ;
typedef enum ice_container_type { ____Placeholder_ice_container_type } ice_container_type ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {TYPE_1__* q_vector; } ;
struct TYPE_5__ {int reg_idx; int intrl; } ;


 int EINVAL ;
 int GLINT_RATE (int ) ;
 int ICE_ITR_DYNAMIC ;
 int ICE_ITR_MAX ;
 int ICE_MAX_INTRL ;


 int ITR_REG_ALIGN (int) ;
 int ITR_TO_REG (int ) ;
 int dev_dbg (int *,char*,int) ;
 int ice_intrl_usec_to_reg (int ,int ) ;
 int netdev_info (int ,char*,char const*,...) ;
 int wr32 (TYPE_4__*,int ,int ) ;

__attribute__((used)) static int
ice_set_rc_coalesce(enum ice_container_type c_type, struct ethtool_coalesce *ec,
      struct ice_ring_container *rc, struct ice_vsi *vsi)
{
 const char *c_type_str = (c_type == 129) ? "rx" : "tx";
 u32 use_adaptive_coalesce, coalesce_usecs;
 struct ice_pf *pf = vsi->back;
 u16 itr_setting;

 if (!rc->ring)
  return -EINVAL;

 switch (c_type) {
 case 129:
  if (ec->rx_coalesce_usecs_high > ICE_MAX_INTRL ||
      (ec->rx_coalesce_usecs_high &&
       ec->rx_coalesce_usecs_high < pf->hw.intrl_gran)) {
   netdev_info(vsi->netdev,
        "Invalid value, %s-usecs-high valid values are 0 (disabled), %d-%d\n",
        c_type_str, pf->hw.intrl_gran,
        ICE_MAX_INTRL);
   return -EINVAL;
  }
  if (ec->rx_coalesce_usecs_high != rc->ring->q_vector->intrl) {
   rc->ring->q_vector->intrl = ec->rx_coalesce_usecs_high;
   wr32(&pf->hw, GLINT_RATE(rc->ring->q_vector->reg_idx),
        ice_intrl_usec_to_reg(ec->rx_coalesce_usecs_high,
         pf->hw.intrl_gran));
  }

  use_adaptive_coalesce = ec->use_adaptive_rx_coalesce;
  coalesce_usecs = ec->rx_coalesce_usecs;

  break;
 case 128:
  if (ec->tx_coalesce_usecs_high) {
   netdev_info(vsi->netdev,
        "setting %s-usecs-high is not supported\n",
        c_type_str);
   return -EINVAL;
  }

  use_adaptive_coalesce = ec->use_adaptive_tx_coalesce;
  coalesce_usecs = ec->tx_coalesce_usecs;

  break;
 default:
  dev_dbg(&pf->pdev->dev, "Invalid container type %d\n", c_type);
  return -EINVAL;
 }

 itr_setting = rc->itr_setting & ~ICE_ITR_DYNAMIC;
 if (coalesce_usecs != itr_setting && use_adaptive_coalesce) {
  netdev_info(vsi->netdev,
       "%s interrupt throttling cannot be changed if adaptive-%s is enabled\n",
       c_type_str, c_type_str);
  return -EINVAL;
 }

 if (coalesce_usecs > ICE_ITR_MAX) {
  netdev_info(vsi->netdev,
       "Invalid value, %s-usecs range is 0-%d\n",
       c_type_str, ICE_ITR_MAX);
  return -EINVAL;
 }


 if (coalesce_usecs % 2 != 0) {
  netdev_info(vsi->netdev,
       "Invalid value, %s-usecs must be even\n",
       c_type_str);
  return -EINVAL;
 }

 if (use_adaptive_coalesce) {
  rc->itr_setting |= ICE_ITR_DYNAMIC;
 } else {

  rc->itr_setting = coalesce_usecs;

  rc->target_itr =
   ITR_TO_REG(ITR_REG_ALIGN(rc->itr_setting));
 }

 return 0;
}
