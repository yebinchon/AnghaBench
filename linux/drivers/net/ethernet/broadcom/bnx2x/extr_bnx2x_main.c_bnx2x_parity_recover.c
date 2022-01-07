
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {void* unrecoverable_error; void* recoverable_error; } ;
struct bnx2x {int recovery_state; int is_leader; TYPE_1__ eth_stats; int dev; int sp_rtnl_task; } ;


 int BNX2X_RECOVERY_DONE ;

 int BNX2X_RECOVERY_NIC_LOADING ;

 int BP_PATH (struct bnx2x*) ;
 int DP (int ,char*) ;
 int HZ ;
 int LOAD_NORMAL ;
 int NETIF_MSG_HW ;
 int PCI_D3hot ;
 int UNLOAD_RECOVERY ;
 int WARN_ON (int) ;
 int bnx2x_chk_parity_attn (struct bnx2x*,int*,int) ;
 int bnx2x_get_load_status (struct bnx2x*,int) ;
 int bnx2x_leader_reset (struct bnx2x*) ;
 int bnx2x_nic_load (struct bnx2x*,int ) ;
 int bnx2x_nic_unload (struct bnx2x*,int ,int) ;
 int bnx2x_recovery_failed (struct bnx2x*) ;
 int bnx2x_reset_is_done (struct bnx2x*,int) ;
 int bnx2x_reset_is_global (struct bnx2x*) ;
 int bnx2x_set_power_state (struct bnx2x*,int ) ;
 int bnx2x_set_reset_global (struct bnx2x*) ;
 int bnx2x_set_reset_in_progress (struct bnx2x*) ;
 int bnx2x_trylock_leader_lock (struct bnx2x*) ;
 int netdev_err (int ,char*) ;
 int netif_device_detach (int ) ;
 int schedule_delayed_work (int *,int) ;
 int smp_mb () ;

__attribute__((used)) static void bnx2x_parity_recover(struct bnx2x *bp)
{
 bool global = 0;
 u32 error_recovered, error_unrecovered;
 bool is_parity;

 DP(NETIF_MSG_HW, "Handling parity\n");
 while (1) {
  switch (bp->recovery_state) {
  case 129:
   DP(NETIF_MSG_HW, "State is BNX2X_RECOVERY_INIT\n");
   is_parity = bnx2x_chk_parity_attn(bp, &global, 0);
   WARN_ON(!is_parity);


   if (bnx2x_trylock_leader_lock(bp)) {
    bnx2x_set_reset_in_progress(bp);






    if (global)
     bnx2x_set_reset_global(bp);

    bp->is_leader = 1;
   }



   if (bnx2x_nic_unload(bp, UNLOAD_RECOVERY, 0))
    return;

   bp->recovery_state = 128;





   smp_mb();
   break;

  case 128:
   DP(NETIF_MSG_HW, "State is BNX2X_RECOVERY_WAIT\n");
   if (bp->is_leader) {
    int other_engine = BP_PATH(bp) ? 0 : 1;
    bool other_load_status =
     bnx2x_get_load_status(bp, other_engine);
    bool load_status =
     bnx2x_get_load_status(bp, BP_PATH(bp));
    global = bnx2x_reset_is_global(bp);
    if (load_status ||
        (global && other_load_status)) {



     schedule_delayed_work(&bp->sp_rtnl_task,
        HZ/10);
     return;
    } else {





     if (bnx2x_leader_reset(bp)) {
      bnx2x_recovery_failed(bp);
      return;
     }






     break;
    }
   } else {
    if (!bnx2x_reset_is_done(bp, BP_PATH(bp))) {






     if (bnx2x_trylock_leader_lock(bp)) {



      bp->is_leader = 1;
      break;
     }

     schedule_delayed_work(&bp->sp_rtnl_task,
        HZ/10);
     return;

    } else {




     if (bnx2x_reset_is_global(bp)) {
      schedule_delayed_work(
       &bp->sp_rtnl_task,
       HZ/10);
      return;
     }

     error_recovered =
       bp->eth_stats.recoverable_error;
     error_unrecovered =
       bp->eth_stats.unrecoverable_error;
     bp->recovery_state =
      BNX2X_RECOVERY_NIC_LOADING;
     if (bnx2x_nic_load(bp, LOAD_NORMAL)) {
      error_unrecovered++;
      netdev_err(bp->dev,
          "Recovery failed. Power cycle needed\n");

      netif_device_detach(bp->dev);

      bnx2x_set_power_state(
       bp, PCI_D3hot);
      smp_mb();
     } else {
      bp->recovery_state =
       BNX2X_RECOVERY_DONE;
      error_recovered++;
      smp_mb();
     }
     bp->eth_stats.recoverable_error =
      error_recovered;
     bp->eth_stats.unrecoverable_error =
      error_unrecovered;

     return;
    }
   }
  default:
   return;
  }
 }
}
