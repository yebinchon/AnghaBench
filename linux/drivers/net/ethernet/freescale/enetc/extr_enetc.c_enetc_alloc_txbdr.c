
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union enetc_tx_bd {int dummy; } enetc_tx_bd ;
struct enetc_tx_swbd {int dummy; } ;
struct enetc_bdr {int bd_count; scalar_t__ next_to_use; scalar_t__ next_to_clean; int tx_swbd; } ;


 int ENOMEM ;
 int enetc_dma_alloc_bdr (struct enetc_bdr*,int) ;
 int vfree (int ) ;
 int vzalloc (int) ;

__attribute__((used)) static int enetc_alloc_txbdr(struct enetc_bdr *txr)
{
 int err;

 txr->tx_swbd = vzalloc(txr->bd_count * sizeof(struct enetc_tx_swbd));
 if (!txr->tx_swbd)
  return -ENOMEM;

 err = enetc_dma_alloc_bdr(txr, sizeof(union enetc_tx_bd));
 if (err) {
  vfree(txr->tx_swbd);
  return err;
 }

 txr->next_to_clean = 0;
 txr->next_to_use = 0;

 return 0;
}
