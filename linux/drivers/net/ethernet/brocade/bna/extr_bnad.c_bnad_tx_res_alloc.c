
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bnad {int dummy; } ;
struct TYPE_2__ {int intr_info; int mem_info; } ;
struct bna_res_info {scalar_t__ res_type; TYPE_1__ res_u; } ;


 int BNAD_INTR_TX ;
 scalar_t__ BNA_RES_T_INTR ;
 scalar_t__ BNA_RES_T_MEM ;
 int BNA_TX_RES_T_MAX ;
 int bnad_mem_alloc (struct bnad*,int *) ;
 int bnad_tx_res_free (struct bnad*,struct bna_res_info*) ;
 int bnad_txrx_irq_alloc (struct bnad*,int ,int ,int *) ;

__attribute__((used)) static int
bnad_tx_res_alloc(struct bnad *bnad, struct bna_res_info *res_info,
    u32 tx_id)
{
 int i, err = 0;

 for (i = 0; i < BNA_TX_RES_T_MAX; i++) {
  if (res_info[i].res_type == BNA_RES_T_MEM)
   err = bnad_mem_alloc(bnad,
     &res_info[i].res_u.mem_info);
  else if (res_info[i].res_type == BNA_RES_T_INTR)
   err = bnad_txrx_irq_alloc(bnad, BNAD_INTR_TX, tx_id,
     &res_info[i].res_u.intr_info);
  if (err)
   goto err_return;
 }
 return 0;

err_return:
 bnad_tx_res_free(bnad, res_info);
 return err;
}
