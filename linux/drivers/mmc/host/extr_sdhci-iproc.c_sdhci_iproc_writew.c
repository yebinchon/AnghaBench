
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_iproc_host {int is_blk_shadowed; int shadow_blk; int shadow_cmd; int is_cmd_shadowed; } ;
struct sdhci_host {int dummy; } ;


 int REG_OFFSET_IN_BITS (int) ;
 int SDHCI_BLOCK_COUNT ;
 int SDHCI_BLOCK_SIZE ;
 int SDHCI_COMMAND ;
 int SDHCI_TRANSFER_MODE ;
 int sdhci_iproc_readl (struct sdhci_host*,int) ;
 int sdhci_iproc_writel (struct sdhci_host*,int,int) ;
 struct sdhci_iproc_host* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static void sdhci_iproc_writew(struct sdhci_host *host, u16 val, int reg)
{
 struct sdhci_pltfm_host *pltfm_host = sdhci_priv(host);
 struct sdhci_iproc_host *iproc_host = sdhci_pltfm_priv(pltfm_host);
 u32 word_shift = REG_OFFSET_IN_BITS(reg);
 u32 mask = 0xffff << word_shift;
 u32 oldval, newval;

 if (reg == SDHCI_COMMAND) {

  if (iproc_host->is_blk_shadowed) {
   sdhci_iproc_writel(host, iproc_host->shadow_blk,
    SDHCI_BLOCK_SIZE);
   iproc_host->is_blk_shadowed = 0;
  }
  oldval = iproc_host->shadow_cmd;
  iproc_host->is_cmd_shadowed = 0;
 } else if ((reg == SDHCI_BLOCK_SIZE || reg == SDHCI_BLOCK_COUNT) &&
     iproc_host->is_blk_shadowed) {

  oldval = iproc_host->shadow_blk;
 } else {

  oldval = sdhci_iproc_readl(host, (reg & ~3));
 }
 newval = (oldval & ~mask) | (val << word_shift);

 if (reg == SDHCI_TRANSFER_MODE) {

  iproc_host->shadow_cmd = newval;
  iproc_host->is_cmd_shadowed = 1;
 } else if (reg == SDHCI_BLOCK_SIZE || reg == SDHCI_BLOCK_COUNT) {

  iproc_host->shadow_blk = newval;
  iproc_host->is_blk_shadowed = 1;
 } else {

  sdhci_iproc_writel(host, newval, reg & ~3);
 }
}
