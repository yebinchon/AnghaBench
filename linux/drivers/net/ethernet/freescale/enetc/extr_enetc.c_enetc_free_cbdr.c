
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enetc_cbdr {int bd_count; int * bd_base; int bd_dma_base; } ;
struct enetc_cbd {int dummy; } ;
struct device {int dummy; } ;


 int dma_free_coherent (struct device*,int,int *,int ) ;

__attribute__((used)) static void enetc_free_cbdr(struct device *dev, struct enetc_cbdr *cbdr)
{
 int size = cbdr->bd_count * sizeof(struct enetc_cbd);

 dma_free_coherent(dev, size, cbdr->bd_base, cbdr->bd_dma_base);
 cbdr->bd_base = ((void*)0);
}
