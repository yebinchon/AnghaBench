
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_res_info {int dummy; } ;
struct bna {int mod_flags; void* promisc_rid; void* default_mode_rid; int mcam_mod; int ucam_mod; int rx_mod; int tx_mod; } ;


 void* BFI_INVALID_RID ;
 int BNA_MOD_F_INIT_DONE ;
 int bna_mcam_mod_init (int *,struct bna*,struct bna_res_info*) ;
 int bna_rx_mod_init (int *,struct bna*,struct bna_res_info*) ;
 int bna_tx_mod_init (int *,struct bna*,struct bna_res_info*) ;
 int bna_ucam_mod_init (int *,struct bna*,struct bna_res_info*) ;

void
bna_mod_init(struct bna *bna, struct bna_res_info *res_info)
{
 bna_tx_mod_init(&bna->tx_mod, bna, res_info);

 bna_rx_mod_init(&bna->rx_mod, bna, res_info);

 bna_ucam_mod_init(&bna->ucam_mod, bna, res_info);

 bna_mcam_mod_init(&bna->mcam_mod, bna, res_info);

 bna->default_mode_rid = BFI_INVALID_RID;
 bna->promisc_rid = BFI_INVALID_RID;

 bna->mod_flags |= BNA_MOD_F_INIT_DONE;
}
