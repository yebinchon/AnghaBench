
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct netdev_queue {unsigned long trans_start; } ;
struct net_device {size_t num_tx_queues; scalar_t__ watchdog_timeo; } ;
struct ice_vsi {size_t num_txq; int state; int vsi_num; int * txq_map; struct ice_ring** tx_rings; struct ice_pf* back; } ;
struct ice_ring {int q_index; int next_to_use; int next_to_clean; TYPE_1__* q_vector; scalar_t__ desc; } ;
struct ice_hw {int dummy; } ;
struct ice_pf {int tx_timeout_recovery_level; int state; scalar_t__ tx_timeout_last_recovery; struct ice_hw hw; int tx_timeout_count; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
struct TYPE_2__ {int reg_idx; } ;


 int GLINT_DYN_CTL (int ) ;
 int HZ ;
 int QTX_COMM_HEAD (int ) ;
 size_t QTX_COMM_HEAD_HEAD_M ;
 size_t QTX_COMM_HEAD_HEAD_S ;
 int __ICE_CORER_REQ ;
 int __ICE_DOWN ;
 int __ICE_GLOBR_REQ ;
 int __ICE_NEEDS_RESTART ;
 int __ICE_PFR_REQ ;
 int __ICE_SERVICE_DIS ;
 int ice_service_task_schedule (struct ice_pf*) ;
 scalar_t__ jiffies ;
 int netdev_err (struct net_device*,char*) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,size_t) ;
 int netdev_info (struct net_device*,char*,...) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_xmit_stopped (struct netdev_queue*) ;
 size_t rd32 (struct ice_hw*,int ) ;
 int set_bit (int ,int ) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static void ice_tx_timeout(struct net_device *netdev)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_ring *tx_ring = ((void*)0);
 struct ice_vsi *vsi = np->vsi;
 struct ice_pf *pf = vsi->back;
 int hung_queue = -1;
 u32 i;

 pf->tx_timeout_count++;


 for (i = 0; i < netdev->num_tx_queues; i++) {
  unsigned long trans_start;
  struct netdev_queue *q;

  q = netdev_get_tx_queue(netdev, i);
  trans_start = q->trans_start;
  if (netif_xmit_stopped(q) &&
      time_after(jiffies,
          trans_start + netdev->watchdog_timeo)) {
   hung_queue = i;
   break;
  }
 }

 if (i == netdev->num_tx_queues)
  netdev_info(netdev, "tx_timeout: no netdev hung queue found\n");
 else

  for (i = 0; i < vsi->num_txq; i++)
   if (vsi->tx_rings[i] && vsi->tx_rings[i]->desc)
    if (hung_queue == vsi->tx_rings[i]->q_index) {
     tx_ring = vsi->tx_rings[i];
     break;
    }




 if (time_after(jiffies, (pf->tx_timeout_last_recovery + HZ * 20)))
  pf->tx_timeout_recovery_level = 1;
 else if (time_before(jiffies, (pf->tx_timeout_last_recovery +
           netdev->watchdog_timeo)))
  return;

 if (tx_ring) {
  struct ice_hw *hw = &pf->hw;
  u32 head, val = 0;

  head = (rd32(hw, QTX_COMM_HEAD(vsi->txq_map[hung_queue])) &
   QTX_COMM_HEAD_HEAD_M) >> QTX_COMM_HEAD_HEAD_S;

  val = rd32(hw, GLINT_DYN_CTL(tx_ring->q_vector->reg_idx));

  netdev_info(netdev, "tx_timeout: VSI_num: %d, Q %d, NTC: 0x%x, HW_HEAD: 0x%x, NTU: 0x%x, INT: 0x%x\n",
       vsi->vsi_num, hung_queue, tx_ring->next_to_clean,
       head, tx_ring->next_to_use, val);
 }

 pf->tx_timeout_last_recovery = jiffies;
 netdev_info(netdev, "tx_timeout recovery level %d, hung_queue %d\n",
      pf->tx_timeout_recovery_level, hung_queue);

 switch (pf->tx_timeout_recovery_level) {
 case 1:
  set_bit(__ICE_PFR_REQ, pf->state);
  break;
 case 2:
  set_bit(__ICE_CORER_REQ, pf->state);
  break;
 case 3:
  set_bit(__ICE_GLOBR_REQ, pf->state);
  break;
 default:
  netdev_err(netdev, "tx_timeout recovery unsuccessful, device is in unrecoverable state.\n");
  set_bit(__ICE_DOWN, pf->state);
  set_bit(__ICE_NEEDS_RESTART, vsi->state);
  set_bit(__ICE_SERVICE_DIS, pf->state);
  break;
 }

 ice_service_task_schedule(pf);
 pf->tx_timeout_recovery_level++;
}
