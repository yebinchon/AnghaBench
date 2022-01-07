
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_tx {int dummy; } ;


 int bna_bfi_tx_enet_start (struct bna_tx*) ;

__attribute__((used)) static void
bna_tx_sm_start_wait_entry(struct bna_tx *tx)
{
 bna_bfi_tx_enet_start(tx);
}
