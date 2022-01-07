
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ produce_idx; scalar_t__ consume_idx; scalar_t__ count; } ;
struct emac_tx_queue {TYPE_1__ tpd; } ;



__attribute__((used)) static unsigned int emac_tpd_num_free_descs(struct emac_tx_queue *tx_q)
{
 u32 produce_idx = tx_q->tpd.produce_idx;
 u32 consume_idx = tx_q->tpd.consume_idx;

 return (consume_idx > produce_idx) ?
  (consume_idx - produce_idx - 1) :
  (tx_q->tpd.count + consume_idx - produce_idx - 1);
}
