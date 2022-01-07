
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ BOUNDARY_OK (int,int) ;
 int SZ_128M ;
 scalar_t__ likely (int) ;
 int sdhci_adma_write_desc (struct sdhci_host*,void**,int,int,unsigned int) ;

__attribute__((used)) static void dwcmshc_adma_write_desc(struct sdhci_host *host, void **desc,
        dma_addr_t addr, int len, unsigned int cmd)
{
 int tmplen, offset;

 if (likely(!len || BOUNDARY_OK(addr, len))) {
  sdhci_adma_write_desc(host, desc, addr, len, cmd);
  return;
 }

 offset = addr & (SZ_128M - 1);
 tmplen = SZ_128M - offset;
 sdhci_adma_write_desc(host, desc, addr, tmplen, cmd);

 addr += tmplen;
 len -= tmplen;
 sdhci_adma_write_desc(host, desc, addr, len, cmd);
}
