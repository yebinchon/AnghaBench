
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int mmc; } ;
struct sdhci_bcm_kona_dev {int write_lock; } ;


 int KONA_SDHOST_CD_SW ;
 int KONA_SDHOST_CORESTAT ;
 int KONA_SDHOST_WP ;
 int mmc_gpio_get_ro (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sdhci_bcm_kona_dev* sdhci_pltfm_priv (struct sdhci_pltfm_host*) ;
 struct sdhci_pltfm_host* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int sdhci_bcm_kona_sd_card_emulate(struct sdhci_host *host, int insert)
{
 struct sdhci_pltfm_host *pltfm_priv = sdhci_priv(host);
 struct sdhci_bcm_kona_dev *kona_dev = sdhci_pltfm_priv(pltfm_priv);
 u32 val;
 mutex_lock(&kona_dev->write_lock);
 udelay(20);
 val = sdhci_readl(host, KONA_SDHOST_CORESTAT);

 if (insert) {
  int ret;

  ret = mmc_gpio_get_ro(host->mmc);
  if (ret >= 0)
   val = (val & ~KONA_SDHOST_WP) |
    ((ret) ? KONA_SDHOST_WP : 0);

  val |= KONA_SDHOST_CD_SW;
  sdhci_writel(host, val, KONA_SDHOST_CORESTAT);
 } else {
  val &= ~KONA_SDHOST_CD_SW;
  sdhci_writel(host, val, KONA_SDHOST_CORESTAT);
 }
 mutex_unlock(&kona_dev->write_lock);

 return 0;
}
