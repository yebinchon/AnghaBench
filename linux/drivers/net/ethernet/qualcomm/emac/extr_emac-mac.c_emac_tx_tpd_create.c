
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ last_produce_idx; scalar_t__ produce_idx; scalar_t__ count; } ;
struct emac_tx_queue {TYPE_1__ tpd; } ;
struct emac_tpd {int * word; } ;
struct emac_adapter {int tpd_size; } ;


 int * EMAC_TPD (struct emac_tx_queue*,int ,scalar_t__) ;

__attribute__((used)) static void emac_tx_tpd_create(struct emac_adapter *adpt,
          struct emac_tx_queue *tx_q, struct emac_tpd *tpd)
{
 u32 *hw_tpd;

 tx_q->tpd.last_produce_idx = tx_q->tpd.produce_idx;
 hw_tpd = EMAC_TPD(tx_q, adpt->tpd_size, tx_q->tpd.produce_idx);

 if (++tx_q->tpd.produce_idx == tx_q->tpd.count)
  tx_q->tpd.produce_idx = 0;

 *(hw_tpd++) = tpd->word[0];
 *(hw_tpd++) = tpd->word[1];
 *(hw_tpd++) = tpd->word[2];
 *hw_tpd = tpd->word[3];
}
