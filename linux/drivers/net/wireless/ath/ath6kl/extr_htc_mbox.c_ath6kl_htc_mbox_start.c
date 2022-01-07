
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct htc_target {TYPE_1__* dev; int tgt_creds; int cred_dist_list; int credit_info; scalar_t__ rx_st_flags; scalar_t__ htc_flags; } ;
struct htc_packet {int dummy; } ;
struct TYPE_3__ {int irq_proc_reg; } ;


 int ath6kl_credit_init (int ,int *,int ) ;
 int ath6kl_hif_disable_intrs (TYPE_1__*) ;
 int ath6kl_hif_unmask_intrs (TYPE_1__*) ;
 int ath6kl_htc_mbox_stop (struct htc_target*) ;
 int dump_cred_dist_stats (struct htc_target*) ;
 int htc_add_rxbuf (struct htc_target*,struct htc_packet*) ;
 struct htc_packet* htc_get_control_buf (struct htc_target*,int) ;
 int htc_setup_tx_complete (struct htc_target*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int ath6kl_htc_mbox_start(struct htc_target *target)
{
 struct htc_packet *packet;
 int status;

 memset(&target->dev->irq_proc_reg, 0,
        sizeof(target->dev->irq_proc_reg));


 ath6kl_hif_disable_intrs(target->dev);

 target->htc_flags = 0;
 target->rx_st_flags = 0;


 while ((packet = htc_get_control_buf(target, 0)) != ((void*)0)) {
  status = htc_add_rxbuf(target, packet);
  if (status)
   return status;
 }


 ath6kl_credit_init(target->credit_info, &target->cred_dist_list,
      target->tgt_creds);

 dump_cred_dist_stats(target);


 status = htc_setup_tx_complete(target);

 if (status)
  return status;


 status = ath6kl_hif_unmask_intrs(target->dev);

 if (status)
  ath6kl_htc_mbox_stop(target);

 return status;
}
