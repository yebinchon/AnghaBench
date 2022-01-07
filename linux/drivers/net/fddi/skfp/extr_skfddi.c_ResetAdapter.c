
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* dev; } ;
struct s_smc {TYPE_1__ os; } ;
struct TYPE_4__ {int dev_addr; } ;


 int STI_FBI () ;
 int card_stop (struct s_smc*) ;
 int init_smt (struct s_smc*,int ) ;
 int mac_drv_clear_rx_queue (struct s_smc*) ;
 int mac_drv_clear_tx_queue (struct s_smc*) ;
 int pr_debug (char*) ;
 int skfp_ctl_set_multicast_list_wo_lock (TYPE_2__*) ;
 int smt_online (struct s_smc*,int) ;
 int smt_reset_defaults (struct s_smc*,int) ;

__attribute__((used)) static void ResetAdapter(struct s_smc *smc)
{

 pr_debug("[fddi: ResetAdapter]\n");



 card_stop(smc);


 mac_drv_clear_tx_queue(smc);
 mac_drv_clear_rx_queue(smc);



 smt_reset_defaults(smc, 1);

 init_smt(smc, (smc->os.dev)->dev_addr);

 smt_online(smc, 1);
 STI_FBI();


 skfp_ctl_set_multicast_list_wo_lock(smc->os.dev);
}
