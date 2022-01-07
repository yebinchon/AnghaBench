
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath10k_ce {int paddr_rri; int vaddr_rri; } ;
struct ath10k {int dev; } ;


 int CE_COUNT ;
 struct ath10k_ce* ath10k_ce_priv (struct ath10k*) ;
 int dma_free_coherent (int ,int,int ,int ) ;

void ath10k_ce_free_rri(struct ath10k *ar)
{
 struct ath10k_ce *ce = ath10k_ce_priv(ar);

 dma_free_coherent(ar->dev, (CE_COUNT * sizeof(u32)),
     ce->vaddr_rri,
     ce->paddr_rri);
}
