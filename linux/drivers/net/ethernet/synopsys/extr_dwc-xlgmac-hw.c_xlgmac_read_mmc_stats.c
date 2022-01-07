
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xlgmac_stats {int rxwatchdogerror; int rxvlanframes_gb; int rxfifooverflow; int rxpauseframes; int rxoutofrangetype; int rxlengtherror; int rxunicastframes_g; int rx1024tomaxoctets_gb; int rx512to1023octets_gb; int rx256to511octets_gb; int rx128to255octets_gb; int rx65to127octets_gb; int rx64octets_gb; int rxoversize_g; int rxundersize_g; int rxjabbererror; int rxrunterror; int rxcrcerror; int rxmulticastframes_g; int rxbroadcastframes_g; int rxoctetcount_g; int rxoctetcount_gb; int rxframecount_gb; int txvlanframes_g; int txpauseframes; int txframecount_g; int txoctetcount_g; int txunderflowerror; int txbroadcastframes_g; int txmulticastframes_gb; int txunicastframes_gb; int tx1024tomaxoctets_gb; int tx512to1023octets_gb; int tx256to511octets_gb; int tx128to255octets_gb; int tx65to127octets_gb; int tx64octets_gb; int txmulticastframes_g; int txframecount_gb; int txoctetcount_gb; } ;
struct xlgmac_pdata {scalar_t__ mac_regs; struct xlgmac_stats stats; } ;


 scalar_t__ MMC_CR ;
 int MMC_CR_MCF_LEN ;
 int MMC_CR_MCF_POS ;
 int MMC_RX1024TOMAXOCTETS_GB_LO ;
 int MMC_RX128TO255OCTETS_GB_LO ;
 int MMC_RX256TO511OCTETS_GB_LO ;
 int MMC_RX512TO1023OCTETS_GB_LO ;
 int MMC_RX64OCTETS_GB_LO ;
 int MMC_RX65TO127OCTETS_GB_LO ;
 int MMC_RXBROADCASTFRAMES_G_LO ;
 int MMC_RXCRCERROR_LO ;
 int MMC_RXFIFOOVERFLOW_LO ;
 int MMC_RXFRAMECOUNT_GB_LO ;
 int MMC_RXJABBERERROR ;
 int MMC_RXLENGTHERROR_LO ;
 int MMC_RXMULTICASTFRAMES_G_LO ;
 int MMC_RXOCTETCOUNT_GB_LO ;
 int MMC_RXOCTETCOUNT_G_LO ;
 int MMC_RXOUTOFRANGETYPE_LO ;
 int MMC_RXOVERSIZE_G ;
 int MMC_RXPAUSEFRAMES_LO ;
 int MMC_RXRUNTERROR ;
 int MMC_RXUNDERSIZE_G ;
 int MMC_RXUNICASTFRAMES_G_LO ;
 int MMC_RXVLANFRAMES_GB_LO ;
 int MMC_RXWATCHDOGERROR ;
 int MMC_TX1024TOMAXOCTETS_GB_LO ;
 int MMC_TX128TO255OCTETS_GB_LO ;
 int MMC_TX256TO511OCTETS_GB_LO ;
 int MMC_TX512TO1023OCTETS_GB_LO ;
 int MMC_TX64OCTETS_GB_LO ;
 int MMC_TX65TO127OCTETS_GB_LO ;
 int MMC_TXBROADCASTFRAMES_GB_LO ;
 int MMC_TXBROADCASTFRAMES_G_LO ;
 int MMC_TXFRAMECOUNT_GB_LO ;
 int MMC_TXFRAMECOUNT_G_LO ;
 int MMC_TXMULTICASTFRAMES_GB_LO ;
 int MMC_TXMULTICASTFRAMES_G_LO ;
 int MMC_TXOCTETCOUNT_GB_LO ;
 int MMC_TXOCTETCOUNT_G_LO ;
 int MMC_TXPAUSEFRAMES_LO ;
 int MMC_TXUNDERFLOWERROR_LO ;
 int MMC_TXUNICASTFRAMES_GB_LO ;
 int MMC_TXVLANFRAMES_G_LO ;
 int XLGMAC_SET_REG_BITS (int ,int ,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;
 scalar_t__ xlgmac_mmc_read (struct xlgmac_pdata*,int ) ;

__attribute__((used)) static void xlgmac_read_mmc_stats(struct xlgmac_pdata *pdata)
{
 struct xlgmac_stats *stats = &pdata->stats;
 u32 regval;


 regval = readl(pdata->mac_regs + MMC_CR);
 regval = XLGMAC_SET_REG_BITS(regval, MMC_CR_MCF_POS,
         MMC_CR_MCF_LEN, 1);
 writel(regval, pdata->mac_regs + MMC_CR);

 stats->txoctetcount_gb +=
  xlgmac_mmc_read(pdata, MMC_TXOCTETCOUNT_GB_LO);

 stats->txframecount_gb +=
  xlgmac_mmc_read(pdata, MMC_TXFRAMECOUNT_GB_LO);

 stats->txbroadcastframes_g +=
  xlgmac_mmc_read(pdata, MMC_TXBROADCASTFRAMES_G_LO);

 stats->txmulticastframes_g +=
  xlgmac_mmc_read(pdata, MMC_TXMULTICASTFRAMES_G_LO);

 stats->tx64octets_gb +=
  xlgmac_mmc_read(pdata, MMC_TX64OCTETS_GB_LO);

 stats->tx65to127octets_gb +=
  xlgmac_mmc_read(pdata, MMC_TX65TO127OCTETS_GB_LO);

 stats->tx128to255octets_gb +=
  xlgmac_mmc_read(pdata, MMC_TX128TO255OCTETS_GB_LO);

 stats->tx256to511octets_gb +=
  xlgmac_mmc_read(pdata, MMC_TX256TO511OCTETS_GB_LO);

 stats->tx512to1023octets_gb +=
  xlgmac_mmc_read(pdata, MMC_TX512TO1023OCTETS_GB_LO);

 stats->tx1024tomaxoctets_gb +=
  xlgmac_mmc_read(pdata, MMC_TX1024TOMAXOCTETS_GB_LO);

 stats->txunicastframes_gb +=
  xlgmac_mmc_read(pdata, MMC_TXUNICASTFRAMES_GB_LO);

 stats->txmulticastframes_gb +=
  xlgmac_mmc_read(pdata, MMC_TXMULTICASTFRAMES_GB_LO);

 stats->txbroadcastframes_g +=
  xlgmac_mmc_read(pdata, MMC_TXBROADCASTFRAMES_GB_LO);

 stats->txunderflowerror +=
  xlgmac_mmc_read(pdata, MMC_TXUNDERFLOWERROR_LO);

 stats->txoctetcount_g +=
  xlgmac_mmc_read(pdata, MMC_TXOCTETCOUNT_G_LO);

 stats->txframecount_g +=
  xlgmac_mmc_read(pdata, MMC_TXFRAMECOUNT_G_LO);

 stats->txpauseframes +=
  xlgmac_mmc_read(pdata, MMC_TXPAUSEFRAMES_LO);

 stats->txvlanframes_g +=
  xlgmac_mmc_read(pdata, MMC_TXVLANFRAMES_G_LO);

 stats->rxframecount_gb +=
  xlgmac_mmc_read(pdata, MMC_RXFRAMECOUNT_GB_LO);

 stats->rxoctetcount_gb +=
  xlgmac_mmc_read(pdata, MMC_RXOCTETCOUNT_GB_LO);

 stats->rxoctetcount_g +=
  xlgmac_mmc_read(pdata, MMC_RXOCTETCOUNT_G_LO);

 stats->rxbroadcastframes_g +=
  xlgmac_mmc_read(pdata, MMC_RXBROADCASTFRAMES_G_LO);

 stats->rxmulticastframes_g +=
  xlgmac_mmc_read(pdata, MMC_RXMULTICASTFRAMES_G_LO);

 stats->rxcrcerror +=
  xlgmac_mmc_read(pdata, MMC_RXCRCERROR_LO);

 stats->rxrunterror +=
  xlgmac_mmc_read(pdata, MMC_RXRUNTERROR);

 stats->rxjabbererror +=
  xlgmac_mmc_read(pdata, MMC_RXJABBERERROR);

 stats->rxundersize_g +=
  xlgmac_mmc_read(pdata, MMC_RXUNDERSIZE_G);

 stats->rxoversize_g +=
  xlgmac_mmc_read(pdata, MMC_RXOVERSIZE_G);

 stats->rx64octets_gb +=
  xlgmac_mmc_read(pdata, MMC_RX64OCTETS_GB_LO);

 stats->rx65to127octets_gb +=
  xlgmac_mmc_read(pdata, MMC_RX65TO127OCTETS_GB_LO);

 stats->rx128to255octets_gb +=
  xlgmac_mmc_read(pdata, MMC_RX128TO255OCTETS_GB_LO);

 stats->rx256to511octets_gb +=
  xlgmac_mmc_read(pdata, MMC_RX256TO511OCTETS_GB_LO);

 stats->rx512to1023octets_gb +=
  xlgmac_mmc_read(pdata, MMC_RX512TO1023OCTETS_GB_LO);

 stats->rx1024tomaxoctets_gb +=
  xlgmac_mmc_read(pdata, MMC_RX1024TOMAXOCTETS_GB_LO);

 stats->rxunicastframes_g +=
  xlgmac_mmc_read(pdata, MMC_RXUNICASTFRAMES_G_LO);

 stats->rxlengtherror +=
  xlgmac_mmc_read(pdata, MMC_RXLENGTHERROR_LO);

 stats->rxoutofrangetype +=
  xlgmac_mmc_read(pdata, MMC_RXOUTOFRANGETYPE_LO);

 stats->rxpauseframes +=
  xlgmac_mmc_read(pdata, MMC_RXPAUSEFRAMES_LO);

 stats->rxfifooverflow +=
  xlgmac_mmc_read(pdata, MMC_RXFIFOOVERFLOW_LO);

 stats->rxvlanframes_gb +=
  xlgmac_mmc_read(pdata, MMC_RXVLANFRAMES_GB_LO);

 stats->rxwatchdogerror +=
  xlgmac_mmc_read(pdata, MMC_RXWATCHDOGERROR);


 regval = readl(pdata->mac_regs + MMC_CR);
 regval = XLGMAC_SET_REG_BITS(regval, MMC_CR_MCF_POS,
         MMC_CR_MCF_LEN, 0);
 writel(regval, pdata->mac_regs + MMC_CR);
}
