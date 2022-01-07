
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int last_produce_idx; } ;
struct emac_tx_queue {TYPE_1__ tpd; } ;
struct emac_adapter {int tpd_size; } ;


 int * EMAC_TPD (struct emac_tx_queue*,int ,int ) ;
 int EMAC_TPD_LAST_FRAGMENT ;

__attribute__((used)) static void emac_tx_tpd_mark_last(struct emac_adapter *adpt,
      struct emac_tx_queue *tx_q)
{
 u32 *hw_tpd =
  EMAC_TPD(tx_q, adpt->tpd_size, tx_q->tpd.last_produce_idx);
 u32 tmp_tpd;

 tmp_tpd = *(hw_tpd + 1);
 tmp_tpd |= EMAC_TPD_LAST_FRAGMENT;
 *(hw_tpd + 1) = tmp_tpd;
}
