
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_host {TYPE_1__* ops; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* adma_write_desc ) (struct sdhci_host*,void**,int ,int,unsigned int) ;} ;


 int sdhci_adma_write_desc (struct sdhci_host*,void**,int ,int,unsigned int) ;
 int stub1 (struct sdhci_host*,void**,int ,int,unsigned int) ;

__attribute__((used)) static inline void __sdhci_adma_write_desc(struct sdhci_host *host,
        void **desc, dma_addr_t addr,
        int len, unsigned int cmd)
{
 if (host->ops->adma_write_desc)
  host->ops->adma_write_desc(host, desc, addr, len, cmd);
 else
  sdhci_adma_write_desc(host, desc, addr, len, cmd);
}
