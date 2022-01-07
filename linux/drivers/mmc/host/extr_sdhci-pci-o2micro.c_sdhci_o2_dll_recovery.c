
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sdhci_pci_slot {struct sdhci_pci_chip* chip; } ;
struct sdhci_pci_chip {int pdev; } ;
struct sdhci_host {int mmc; } ;
struct o2_host {size_t dll_adjust_count; } ;


 size_t DMDN_SZ ;
 int O2_PLL_DLL_WDT_CONTROL1 ;
 int O2_PLL_SOFT_RESET ;
 int O2_SD_FREG4_ENABLE_CLK_SET ;
 int O2_SD_FUNC_REG4 ;
 int O2_SD_LOCK_WP ;
 int SDHCI_CLOCK_CARD_EN ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_CLOCK_INT_EN ;
 int * dmdn_table ;
 int mmc_hostname (int ) ;
 int o2_pci_set_baseclk (struct sdhci_pci_chip*,int ) ;
 int pci_read_config_byte (int ,int ,int*) ;
 int pci_read_config_dword (int ,int ,int *) ;
 int pci_write_config_byte (int ,int ,int) ;
 int pci_write_config_dword (int ,int ,int ) ;
 int pr_err (char*,int ) ;
 int pr_warn (char*,int ,size_t) ;
 scalar_t__ sdhci_o2_get_cd (int ) ;
 scalar_t__ sdhci_o2_wait_dll_detect_lock (struct sdhci_host*) ;
 struct o2_host* sdhci_pci_priv (struct sdhci_pci_slot*) ;
 struct sdhci_pci_slot* sdhci_priv (struct sdhci_host*) ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writeb (struct sdhci_host*,int,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int sdhci_o2_dll_recovery(struct sdhci_host *host)
{
 int ret = 0;
 u8 scratch_8 = 0;
 u32 scratch_32 = 0;
 struct sdhci_pci_slot *slot = sdhci_priv(host);
 struct sdhci_pci_chip *chip = slot->chip;
 struct o2_host *o2_host = sdhci_pci_priv(slot);


 pci_read_config_byte(chip->pdev,
   O2_SD_LOCK_WP, &scratch_8);
 scratch_8 &= 0x7f;
 pci_write_config_byte(chip->pdev, O2_SD_LOCK_WP, scratch_8);
 while (o2_host->dll_adjust_count < DMDN_SZ && !ret) {

  sdhci_writeb(host, 0, SDHCI_CLOCK_CONTROL);


  scratch_32 = sdhci_readl(host, O2_PLL_DLL_WDT_CONTROL1);
  scratch_32 |= O2_PLL_SOFT_RESET;
  sdhci_writel(host, scratch_32, O2_PLL_DLL_WDT_CONTROL1);

  pci_read_config_dword(chip->pdev,
         O2_SD_FUNC_REG4,
         &scratch_32);

  scratch_32 |= O2_SD_FREG4_ENABLE_CLK_SET;
  pci_write_config_dword(chip->pdev, O2_SD_FUNC_REG4, scratch_32);
  o2_pci_set_baseclk(chip, dmdn_table[o2_host->dll_adjust_count]);


  scratch_8 = SDHCI_CLOCK_INT_EN;
  sdhci_writeb(host, scratch_8, SDHCI_CLOCK_CONTROL);

  if (sdhci_o2_get_cd(host->mmc)) {




   usleep_range(5000, 6000);
   if (sdhci_o2_wait_dll_detect_lock(host)) {
    scratch_8 |= SDHCI_CLOCK_CARD_EN;
    sdhci_writeb(host, scratch_8,
     SDHCI_CLOCK_CONTROL);
    ret = 1;
   } else {
    pr_warn("%s: DLL unlocked when dll_adjust_count is %d.\n",
     mmc_hostname(host->mmc),
     o2_host->dll_adjust_count);
   }
  } else {
   pr_err("%s: card present detect failed.\n",
    mmc_hostname(host->mmc));
   break;
  }

  o2_host->dll_adjust_count++;
 }
 if (!ret && o2_host->dll_adjust_count == DMDN_SZ)
  pr_err("%s: DLL adjust over max times\n",
  mmc_hostname(host->mmc));

 pci_read_config_byte(chip->pdev,
       O2_SD_LOCK_WP, &scratch_8);
 scratch_8 |= 0x80;
 pci_write_config_byte(chip->pdev, O2_SD_LOCK_WP, scratch_8);
 return ret;
}
