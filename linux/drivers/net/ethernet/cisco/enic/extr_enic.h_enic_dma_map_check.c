
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dma_map_error; } ;
struct enic {TYPE_2__ gen_stats; TYPE_1__* netdev; int pdev; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int name; } ;


 int ENOMEM ;
 int net_warn_ratelimited (char*,int ) ;
 int pci_dma_mapping_error (int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int enic_dma_map_check(struct enic *enic, dma_addr_t dma_addr)
{
 if (unlikely(pci_dma_mapping_error(enic->pdev, dma_addr))) {
  net_warn_ratelimited("%s: PCI dma mapping failed!\n",
         enic->netdev->name);
  enic->gen_stats.dma_map_error++;

  return -ENOMEM;
 }

 return 0;
}
