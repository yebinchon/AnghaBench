
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pxa168_eth_private {int htpr_dma; scalar_t__ htpr; TYPE_2__* dev; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HASH_ADDR_TABLE_SIZE ;
 int HTPR ;
 scalar_t__ dma_alloc_coherent (int ,int ,int *,int ) ;
 int memset (scalar_t__,int ,int ) ;
 int wrl (struct pxa168_eth_private*,int ,int ) ;

__attribute__((used)) static int init_hash_table(struct pxa168_eth_private *pep)
{
 if (!pep->htpr) {
  pep->htpr = dma_alloc_coherent(pep->dev->dev.parent,
            HASH_ADDR_TABLE_SIZE,
            &pep->htpr_dma, GFP_KERNEL);
  if (!pep->htpr)
   return -ENOMEM;
 } else {
  memset(pep->htpr, 0, HASH_ADDR_TABLE_SIZE);
 }
 wrl(pep, HTPR, pep->htpr_dma);
 return 0;
}
