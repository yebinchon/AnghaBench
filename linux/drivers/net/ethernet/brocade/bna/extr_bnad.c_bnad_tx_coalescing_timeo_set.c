
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnad_tx_info {int tx; } ;
struct bnad {int tx_coalescing_timeo; struct bnad_tx_info* tx_info; } ;


 int bna_tx_coalescing_timeo_set (int ,int ) ;

void
bnad_tx_coalescing_timeo_set(struct bnad *bnad)
{
 struct bnad_tx_info *tx_info;

 tx_info = &bnad->tx_info[0];
 if (!tx_info->tx)
  return;

 bna_tx_coalescing_timeo_set(tx_info->tx, bnad->tx_coalescing_timeo);
}
