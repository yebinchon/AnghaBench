
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2x {int stats_init; int recovery_state; int dev; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_RECOVERY_DONE ;
 int BNX2X_RECOVERY_FAILED ;
 int BP_PATH (struct bnx2x*) ;
 int EAGAIN ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 int LOAD_OPEN ;
 int PCI_D0 ;
 int PCI_D3hot ;
 scalar_t__ bnx2x_chk_parity_attn (struct bnx2x*,int*,int) ;
 int bnx2x_get_load_status (struct bnx2x*,int) ;
 int bnx2x_leader_reset (struct bnx2x*) ;
 int bnx2x_nic_load (struct bnx2x*,int ) ;
 int bnx2x_reset_is_done (struct bnx2x*,int) ;
 int bnx2x_set_power_state (struct bnx2x*,int ) ;
 int bnx2x_set_reset_global (struct bnx2x*) ;
 scalar_t__ bnx2x_trylock_leader_lock (struct bnx2x*) ;
 int netdev_info (int ,char*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int udp_tunnel_get_rx_info (struct net_device*) ;

__attribute__((used)) static int bnx2x_open(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);
 int rc;

 bp->stats_init = 1;

 netif_carrier_off(dev);

 bnx2x_set_power_state(bp, PCI_D0);







 if (IS_PF(bp)) {
  int other_engine = BP_PATH(bp) ? 0 : 1;
  bool other_load_status, load_status;
  bool global = 0;

  other_load_status = bnx2x_get_load_status(bp, other_engine);
  load_status = bnx2x_get_load_status(bp, BP_PATH(bp));
  if (!bnx2x_reset_is_done(bp, BP_PATH(bp)) ||
      bnx2x_chk_parity_attn(bp, &global, 1)) {
   do {





    if (global)
     bnx2x_set_reset_global(bp);






    if ((!load_status &&
         (!global || !other_load_status)) &&
          bnx2x_trylock_leader_lock(bp) &&
          !bnx2x_leader_reset(bp)) {
     netdev_info(bp->dev,
          "Recovered in open\n");
     break;
    }


    bnx2x_set_power_state(bp, PCI_D3hot);
    bp->recovery_state = BNX2X_RECOVERY_FAILED;

    BNX2X_ERR("Recovery flow hasn't been properly completed yet. Try again later.\n"
       "If you still see this message after a few retries then power cycle is required.\n");

    return -EAGAIN;
   } while (0);
  }
 }

 bp->recovery_state = BNX2X_RECOVERY_DONE;
 rc = bnx2x_nic_load(bp, LOAD_OPEN);
 if (rc)
  return rc;

 if (IS_PF(bp))
  udp_tunnel_get_rx_info(dev);

 return 0;
}
