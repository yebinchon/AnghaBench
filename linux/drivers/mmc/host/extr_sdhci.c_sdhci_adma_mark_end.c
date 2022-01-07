
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_adma2_64_desc {int cmd; } ;


 int ADMA2_END ;
 int cpu_to_le16 (int ) ;

__attribute__((used)) static void sdhci_adma_mark_end(void *desc)
{
 struct sdhci_adma2_64_desc *dma_desc = desc;


 dma_desc->cmd |= cpu_to_le16(ADMA2_END);
}
