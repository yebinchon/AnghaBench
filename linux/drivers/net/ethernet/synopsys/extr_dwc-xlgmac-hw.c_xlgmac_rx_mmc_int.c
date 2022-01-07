
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_stats {int rxwatchdogerror; int rxvlanframes_gb; int rxfifooverflow; int rxpauseframes; int rxoutofrangetype; int rxlengtherror; int rxunicastframes_g; int rx1024tomaxoctets_gb; int rx512to1023octets_gb; int rx256to511octets_gb; int rx128to255octets_gb; int rx65to127octets_gb; int rx64octets_gb; int rxoversize_g; int rxundersize_g; int rxjabbererror; int rxrunterror; int rxcrcerror; int rxmulticastframes_g; int rxbroadcastframes_g; int rxoctetcount_g; int rxoctetcount_gb; int rxframecount_gb; } ;
struct xlgmac_pdata {struct xlgmac_stats stats; scalar_t__ mac_regs; } ;


 scalar_t__ MMC_RISR ;
 int MMC_RISR_RX1024TOMAXOCTETS_GB_LEN ;
 int MMC_RISR_RX1024TOMAXOCTETS_GB_POS ;
 int MMC_RISR_RX128TO255OCTETS_GB_LEN ;
 int MMC_RISR_RX128TO255OCTETS_GB_POS ;
 int MMC_RISR_RX256TO511OCTETS_GB_LEN ;
 int MMC_RISR_RX256TO511OCTETS_GB_POS ;
 int MMC_RISR_RX512TO1023OCTETS_GB_LEN ;
 int MMC_RISR_RX512TO1023OCTETS_GB_POS ;
 int MMC_RISR_RX64OCTETS_GB_LEN ;
 int MMC_RISR_RX64OCTETS_GB_POS ;
 int MMC_RISR_RX65TO127OCTETS_GB_LEN ;
 int MMC_RISR_RX65TO127OCTETS_GB_POS ;
 int MMC_RISR_RXBROADCASTFRAMES_G_LEN ;
 int MMC_RISR_RXBROADCASTFRAMES_G_POS ;
 int MMC_RISR_RXCRCERROR_LEN ;
 int MMC_RISR_RXCRCERROR_POS ;
 int MMC_RISR_RXFIFOOVERFLOW_LEN ;
 int MMC_RISR_RXFIFOOVERFLOW_POS ;
 int MMC_RISR_RXFRAMECOUNT_GB_LEN ;
 int MMC_RISR_RXFRAMECOUNT_GB_POS ;
 int MMC_RISR_RXJABBERERROR_LEN ;
 int MMC_RISR_RXJABBERERROR_POS ;
 int MMC_RISR_RXLENGTHERROR_LEN ;
 int MMC_RISR_RXLENGTHERROR_POS ;
 int MMC_RISR_RXMULTICASTFRAMES_G_LEN ;
 int MMC_RISR_RXMULTICASTFRAMES_G_POS ;
 int MMC_RISR_RXOCTETCOUNT_GB_LEN ;
 int MMC_RISR_RXOCTETCOUNT_GB_POS ;
 int MMC_RISR_RXOCTETCOUNT_G_LEN ;
 int MMC_RISR_RXOCTETCOUNT_G_POS ;
 int MMC_RISR_RXOUTOFRANGETYPE_LEN ;
 int MMC_RISR_RXOUTOFRANGETYPE_POS ;
 int MMC_RISR_RXOVERSIZE_G_LEN ;
 int MMC_RISR_RXOVERSIZE_G_POS ;
 int MMC_RISR_RXPAUSEFRAMES_LEN ;
 int MMC_RISR_RXPAUSEFRAMES_POS ;
 int MMC_RISR_RXRUNTERROR_LEN ;
 int MMC_RISR_RXRUNTERROR_POS ;
 int MMC_RISR_RXUNDERSIZE_G_LEN ;
 int MMC_RISR_RXUNDERSIZE_G_POS ;
 int MMC_RISR_RXUNICASTFRAMES_G_LEN ;
 int MMC_RISR_RXUNICASTFRAMES_G_POS ;
 int MMC_RISR_RXVLANFRAMES_GB_LEN ;
 int MMC_RISR_RXVLANFRAMES_GB_POS ;
 int MMC_RISR_RXWATCHDOGERROR_LEN ;
 int MMC_RISR_RXWATCHDOGERROR_POS ;
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
 scalar_t__ XLGMAC_GET_REG_BITS (unsigned int,int ,int ) ;
 unsigned int readl (scalar_t__) ;
 scalar_t__ xlgmac_mmc_read (struct xlgmac_pdata*,int ) ;

__attribute__((used)) static void xlgmac_rx_mmc_int(struct xlgmac_pdata *pdata)
{
 unsigned int mmc_isr = readl(pdata->mac_regs + MMC_RISR);
 struct xlgmac_stats *stats = &pdata->stats;

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXFRAMECOUNT_GB_POS,
    MMC_RISR_RXFRAMECOUNT_GB_LEN))
  stats->rxframecount_gb +=
   xlgmac_mmc_read(pdata, MMC_RXFRAMECOUNT_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXOCTETCOUNT_GB_POS,
    MMC_RISR_RXOCTETCOUNT_GB_LEN))
  stats->rxoctetcount_gb +=
   xlgmac_mmc_read(pdata, MMC_RXOCTETCOUNT_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXOCTETCOUNT_G_POS,
    MMC_RISR_RXOCTETCOUNT_G_LEN))
  stats->rxoctetcount_g +=
   xlgmac_mmc_read(pdata, MMC_RXOCTETCOUNT_G_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXBROADCASTFRAMES_G_POS,
    MMC_RISR_RXBROADCASTFRAMES_G_LEN))
  stats->rxbroadcastframes_g +=
   xlgmac_mmc_read(pdata, MMC_RXBROADCASTFRAMES_G_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXMULTICASTFRAMES_G_POS,
    MMC_RISR_RXMULTICASTFRAMES_G_LEN))
  stats->rxmulticastframes_g +=
   xlgmac_mmc_read(pdata, MMC_RXMULTICASTFRAMES_G_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXCRCERROR_POS,
    MMC_RISR_RXCRCERROR_LEN))
  stats->rxcrcerror +=
   xlgmac_mmc_read(pdata, MMC_RXCRCERROR_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXRUNTERROR_POS,
    MMC_RISR_RXRUNTERROR_LEN))
  stats->rxrunterror +=
   xlgmac_mmc_read(pdata, MMC_RXRUNTERROR);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXJABBERERROR_POS,
    MMC_RISR_RXJABBERERROR_LEN))
  stats->rxjabbererror +=
   xlgmac_mmc_read(pdata, MMC_RXJABBERERROR);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXUNDERSIZE_G_POS,
    MMC_RISR_RXUNDERSIZE_G_LEN))
  stats->rxundersize_g +=
   xlgmac_mmc_read(pdata, MMC_RXUNDERSIZE_G);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXOVERSIZE_G_POS,
    MMC_RISR_RXOVERSIZE_G_LEN))
  stats->rxoversize_g +=
   xlgmac_mmc_read(pdata, MMC_RXOVERSIZE_G);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RX64OCTETS_GB_POS,
    MMC_RISR_RX64OCTETS_GB_LEN))
  stats->rx64octets_gb +=
   xlgmac_mmc_read(pdata, MMC_RX64OCTETS_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RX65TO127OCTETS_GB_POS,
    MMC_RISR_RX65TO127OCTETS_GB_LEN))
  stats->rx65to127octets_gb +=
   xlgmac_mmc_read(pdata, MMC_RX65TO127OCTETS_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RX128TO255OCTETS_GB_POS,
    MMC_RISR_RX128TO255OCTETS_GB_LEN))
  stats->rx128to255octets_gb +=
   xlgmac_mmc_read(pdata, MMC_RX128TO255OCTETS_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RX256TO511OCTETS_GB_POS,
    MMC_RISR_RX256TO511OCTETS_GB_LEN))
  stats->rx256to511octets_gb +=
   xlgmac_mmc_read(pdata, MMC_RX256TO511OCTETS_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RX512TO1023OCTETS_GB_POS,
    MMC_RISR_RX512TO1023OCTETS_GB_LEN))
  stats->rx512to1023octets_gb +=
   xlgmac_mmc_read(pdata, MMC_RX512TO1023OCTETS_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RX1024TOMAXOCTETS_GB_POS,
    MMC_RISR_RX1024TOMAXOCTETS_GB_LEN))
  stats->rx1024tomaxoctets_gb +=
   xlgmac_mmc_read(pdata, MMC_RX1024TOMAXOCTETS_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXUNICASTFRAMES_G_POS,
    MMC_RISR_RXUNICASTFRAMES_G_LEN))
  stats->rxunicastframes_g +=
   xlgmac_mmc_read(pdata, MMC_RXUNICASTFRAMES_G_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXLENGTHERROR_POS,
    MMC_RISR_RXLENGTHERROR_LEN))
  stats->rxlengtherror +=
   xlgmac_mmc_read(pdata, MMC_RXLENGTHERROR_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXOUTOFRANGETYPE_POS,
    MMC_RISR_RXOUTOFRANGETYPE_LEN))
  stats->rxoutofrangetype +=
   xlgmac_mmc_read(pdata, MMC_RXOUTOFRANGETYPE_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXPAUSEFRAMES_POS,
    MMC_RISR_RXPAUSEFRAMES_LEN))
  stats->rxpauseframes +=
   xlgmac_mmc_read(pdata, MMC_RXPAUSEFRAMES_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXFIFOOVERFLOW_POS,
    MMC_RISR_RXFIFOOVERFLOW_LEN))
  stats->rxfifooverflow +=
   xlgmac_mmc_read(pdata, MMC_RXFIFOOVERFLOW_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXVLANFRAMES_GB_POS,
    MMC_RISR_RXVLANFRAMES_GB_LEN))
  stats->rxvlanframes_gb +=
   xlgmac_mmc_read(pdata, MMC_RXVLANFRAMES_GB_LO);

 if (XLGMAC_GET_REG_BITS(mmc_isr,
    MMC_RISR_RXWATCHDOGERROR_POS,
    MMC_RISR_RXWATCHDOGERROR_LEN))
  stats->rxwatchdogerror +=
   xlgmac_mmc_read(pdata, MMC_RXWATCHDOGERROR);
}
