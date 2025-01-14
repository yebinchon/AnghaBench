
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_stats {int txvlanframes_g; int txpauseframes; int txframecount_g; int txoctetcount_g; int txunderflowerror; int txbroadcastframes_g; int txmulticastframes_gb; int txunicastframes_gb; int tx1024tomaxoctets_gb; int tx512to1023octets_gb; int tx256to511octets_gb; int tx128to255octets_gb; int tx65to127octets_gb; int tx64octets_gb; int txmulticastframes_g; int txframecount_gb; int txoctetcount_gb; } ;
struct xlgmac_pdata {struct xlgmac_stats stats; scalar_t__ mac_regs; } ;


 scalar_t__ MMC_TISR ;
 int MMC_TISR_TX1024TOMAXOCTETS_GB_LEN ;
 int MMC_TISR_TX1024TOMAXOCTETS_GB_POS ;
 int MMC_TISR_TX128TO255OCTETS_GB_LEN ;
 int MMC_TISR_TX128TO255OCTETS_GB_POS ;
 int MMC_TISR_TX256TO511OCTETS_GB_LEN ;
 int MMC_TISR_TX256TO511OCTETS_GB_POS ;
 int MMC_TISR_TX512TO1023OCTETS_GB_LEN ;
 int MMC_TISR_TX512TO1023OCTETS_GB_POS ;
 int MMC_TISR_TX64OCTETS_GB_LEN ;
 int MMC_TISR_TX64OCTETS_GB_POS ;
 int MMC_TISR_TX65TO127OCTETS_GB_LEN ;
 int MMC_TISR_TX65TO127OCTETS_GB_POS ;
 int MMC_TISR_TXBROADCASTFRAMES_GB_LEN ;
 int MMC_TISR_TXBROADCASTFRAMES_GB_POS ;
 int MMC_TISR_TXBROADCASTFRAMES_G_LEN ;
 int MMC_TISR_TXBROADCASTFRAMES_G_POS ;
 int MMC_TISR_TXFRAMECOUNT_GB_LEN ;
 int MMC_TISR_TXFRAMECOUNT_GB_POS ;
 int MMC_TISR_TXFRAMECOUNT_G_LEN ;
 int MMC_TISR_TXFRAMECOUNT_G_POS ;
 int MMC_TISR_TXMULTICASTFRAMES_GB_LEN ;
 int MMC_TISR_TXMULTICASTFRAMES_GB_POS ;
 int MMC_TISR_TXMULTICASTFRAMES_G_LEN ;
 int MMC_TISR_TXMULTICASTFRAMES_G_POS ;
 int MMC_TISR_TXOCTETCOUNT_GB_LEN ;
 int MMC_TISR_TXOCTETCOUNT_GB_POS ;
 int MMC_TISR_TXOCTETCOUNT_G_LEN ;
 int MMC_TISR_TXOCTETCOUNT_G_POS ;
 int MMC_TISR_TXPAUSEFRAMES_LEN ;
 int MMC_TISR_TXPAUSEFRAMES_POS ;
 int MMC_TISR_TXUNDERFLOWERROR_LEN ;
 int MMC_TISR_TXUNDERFLOWERROR_POS ;
 int MMC_TISR_TXUNICASTFRAMES_GB_LEN ;
 int MMC_TISR_TXUNICASTFRAMES_GB_POS ;
 int MMC_TISR_TXVLANFRAMES_G_LEN ;
 int MMC_TISR_TXVLANFRAMES_G_POS ;
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
 scalar_t__ XLGMAC_GET_REG_BITS (unsigned int,int ,int ) ;
 unsigned int readl (scalar_t__) ;
 scalar_t__ xlgmac_mmc_read (struct xlgmac_pdata*,int ) ;

__attribute__((used)) static void xlgmac_tx_mmc_int(struct xlgmac_pdata *pdata)
{
 unsigned int mmc_isr = readl(pdata->mac_regs + MMC_TISR);
 struct xlgmac_stats *stats = &pdata->stats;

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TXOCTETCOUNT_GB_POS,
    MMC_TISR_TXOCTETCOUNT_GB_LEN))
  stats->txoctetcount_gb +=
   xlgmac_mmc_read(pdata, MMC_TXOCTETCOUNT_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TXFRAMECOUNT_GB_POS,
    MMC_TISR_TXFRAMECOUNT_GB_LEN))
  stats->txframecount_gb +=
   xlgmac_mmc_read(pdata, MMC_TXFRAMECOUNT_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TXBROADCASTFRAMES_G_POS,
    MMC_TISR_TXBROADCASTFRAMES_G_LEN))
  stats->txbroadcastframes_g +=
   xlgmac_mmc_read(pdata, MMC_TXBROADCASTFRAMES_G_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TXMULTICASTFRAMES_G_POS,
    MMC_TISR_TXMULTICASTFRAMES_G_LEN))
  stats->txmulticastframes_g +=
   xlgmac_mmc_read(pdata, MMC_TXMULTICASTFRAMES_G_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TX64OCTETS_GB_POS,
    MMC_TISR_TX64OCTETS_GB_LEN))
  stats->tx64octets_gb +=
   xlgmac_mmc_read(pdata, MMC_TX64OCTETS_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TX65TO127OCTETS_GB_POS,
    MMC_TISR_TX65TO127OCTETS_GB_LEN))
  stats->tx65to127octets_gb +=
   xlgmac_mmc_read(pdata, MMC_TX65TO127OCTETS_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TX128TO255OCTETS_GB_POS,
    MMC_TISR_TX128TO255OCTETS_GB_LEN))
  stats->tx128to255octets_gb +=
   xlgmac_mmc_read(pdata, MMC_TX128TO255OCTETS_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TX256TO511OCTETS_GB_POS,
    MMC_TISR_TX256TO511OCTETS_GB_LEN))
  stats->tx256to511octets_gb +=
   xlgmac_mmc_read(pdata, MMC_TX256TO511OCTETS_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TX512TO1023OCTETS_GB_POS,
    MMC_TISR_TX512TO1023OCTETS_GB_LEN))
  stats->tx512to1023octets_gb +=
   xlgmac_mmc_read(pdata, MMC_TX512TO1023OCTETS_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TX1024TOMAXOCTETS_GB_POS,
    MMC_TISR_TX1024TOMAXOCTETS_GB_LEN))
  stats->tx1024tomaxoctets_gb +=
   xlgmac_mmc_read(pdata, MMC_TX1024TOMAXOCTETS_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TXUNICASTFRAMES_GB_POS,
    MMC_TISR_TXUNICASTFRAMES_GB_LEN))
  stats->txunicastframes_gb +=
   xlgmac_mmc_read(pdata, MMC_TXUNICASTFRAMES_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TXMULTICASTFRAMES_GB_POS,
    MMC_TISR_TXMULTICASTFRAMES_GB_LEN))
  stats->txmulticastframes_gb +=
   xlgmac_mmc_read(pdata, MMC_TXMULTICASTFRAMES_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TXBROADCASTFRAMES_GB_POS,
    MMC_TISR_TXBROADCASTFRAMES_GB_LEN))
  stats->txbroadcastframes_g +=
   xlgmac_mmc_read(pdata, MMC_TXBROADCASTFRAMES_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TXUNDERFLOWERROR_POS,
    MMC_TISR_TXUNDERFLOWERROR_LEN))
  stats->txunderflowerror +=
   xlgmac_mmc_read(pdata, MMC_TXUNDERFLOWERROR_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TXOCTETCOUNT_G_POS,
    MMC_TISR_TXOCTETCOUNT_G_LEN))
  stats->txoctetcount_g +=
   xlgmac_mmc_read(pdata, MMC_TXOCTETCOUNT_G_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TXFRAMECOUNT_G_POS,
    MMC_TISR_TXFRAMECOUNT_G_LEN))
  stats->txframecount_g +=
   xlgmac_mmc_read(pdata, MMC_TXFRAMECOUNT_G_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TXPAUSEFRAMES_POS,
    MMC_TISR_TXPAUSEFRAMES_LEN))
  stats->txpauseframes +=
   xlgmac_mmc_read(pdata, MMC_TXPAUSEFRAMES_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_TISR_TXVLANFRAMES_G_POS,
    MMC_TISR_TXVLANFRAMES_G_LEN))
  stats->txvlanframes_g +=
   xlgmac_mmc_read(pdata, MMC_TXVLANFRAMES_G_LO);
}
