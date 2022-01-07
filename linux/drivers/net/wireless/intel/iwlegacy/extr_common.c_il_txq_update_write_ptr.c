
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int id; int write_ptr; } ;
struct il_tx_queue {scalar_t__ need_update; TYPE_1__ q; } ;
struct il_priv {int status; } ;


 int CSR_GP_CNTRL ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ;
 int CSR_UCODE_DRV_GP1 ;
 int CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP ;
 int D_INFO (char*,int,int) ;
 int HBUS_TARG_WRPTR ;
 int S_POWER_PMI ;
 int _il_rd (struct il_priv*,int ) ;
 int _il_wr (struct il_priv*,int ,int) ;
 int il_set_bit (struct il_priv*,int ,int ) ;
 int il_wr (struct il_priv*,int ,int) ;
 scalar_t__ test_bit (int ,int *) ;

void
il_txq_update_write_ptr(struct il_priv *il, struct il_tx_queue *txq)
{
 u32 reg = 0;
 int txq_id = txq->q.id;

 if (txq->need_update == 0)
  return;


 if (test_bit(S_POWER_PMI, &il->status)) {



  reg = _il_rd(il, CSR_UCODE_DRV_GP1);

  if (reg & CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP) {
   D_INFO("Tx queue %d requesting wakeup," " GP1 = 0x%x\n",
          txq_id, reg);
   il_set_bit(il, CSR_GP_CNTRL,
       CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);
   return;
  }

  il_wr(il, HBUS_TARG_WRPTR, txq->q.write_ptr | (txq_id << 8));






 } else
  _il_wr(il, HBUS_TARG_WRPTR, txq->q.write_ptr | (txq_id << 8));
 txq->need_update = 0;
}
