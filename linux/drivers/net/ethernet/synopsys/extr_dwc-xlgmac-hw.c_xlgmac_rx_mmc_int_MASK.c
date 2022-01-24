#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xlgmac_stats {int /*<<< orphan*/  rxwatchdogerror; int /*<<< orphan*/  rxvlanframes_gb; int /*<<< orphan*/  rxfifooverflow; int /*<<< orphan*/  rxpauseframes; int /*<<< orphan*/  rxoutofrangetype; int /*<<< orphan*/  rxlengtherror; int /*<<< orphan*/  rxunicastframes_g; int /*<<< orphan*/  rx1024tomaxoctets_gb; int /*<<< orphan*/  rx512to1023octets_gb; int /*<<< orphan*/  rx256to511octets_gb; int /*<<< orphan*/  rx128to255octets_gb; int /*<<< orphan*/  rx65to127octets_gb; int /*<<< orphan*/  rx64octets_gb; int /*<<< orphan*/  rxoversize_g; int /*<<< orphan*/  rxundersize_g; int /*<<< orphan*/  rxjabbererror; int /*<<< orphan*/  rxrunterror; int /*<<< orphan*/  rxcrcerror; int /*<<< orphan*/  rxmulticastframes_g; int /*<<< orphan*/  rxbroadcastframes_g; int /*<<< orphan*/  rxoctetcount_g; int /*<<< orphan*/  rxoctetcount_gb; int /*<<< orphan*/  rxframecount_gb; } ;
struct xlgmac_pdata {struct xlgmac_stats stats; scalar_t__ mac_regs; } ;

/* Variables and functions */
 scalar_t__ MMC_RISR ; 
 int /*<<< orphan*/  MMC_RISR_RX1024TOMAXOCTETS_GB_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RX1024TOMAXOCTETS_GB_POS ; 
 int /*<<< orphan*/  MMC_RISR_RX128TO255OCTETS_GB_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RX128TO255OCTETS_GB_POS ; 
 int /*<<< orphan*/  MMC_RISR_RX256TO511OCTETS_GB_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RX256TO511OCTETS_GB_POS ; 
 int /*<<< orphan*/  MMC_RISR_RX512TO1023OCTETS_GB_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RX512TO1023OCTETS_GB_POS ; 
 int /*<<< orphan*/  MMC_RISR_RX64OCTETS_GB_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RX64OCTETS_GB_POS ; 
 int /*<<< orphan*/  MMC_RISR_RX65TO127OCTETS_GB_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RX65TO127OCTETS_GB_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXBROADCASTFRAMES_G_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXBROADCASTFRAMES_G_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXCRCERROR_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXCRCERROR_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXFIFOOVERFLOW_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXFIFOOVERFLOW_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXFRAMECOUNT_GB_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXFRAMECOUNT_GB_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXJABBERERROR_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXJABBERERROR_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXLENGTHERROR_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXLENGTHERROR_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXMULTICASTFRAMES_G_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXMULTICASTFRAMES_G_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXOCTETCOUNT_GB_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXOCTETCOUNT_GB_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXOCTETCOUNT_G_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXOCTETCOUNT_G_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXOUTOFRANGETYPE_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXOUTOFRANGETYPE_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXOVERSIZE_G_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXOVERSIZE_G_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXPAUSEFRAMES_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXPAUSEFRAMES_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXRUNTERROR_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXRUNTERROR_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXUNDERSIZE_G_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXUNDERSIZE_G_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXUNICASTFRAMES_G_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXUNICASTFRAMES_G_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXVLANFRAMES_GB_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXVLANFRAMES_GB_POS ; 
 int /*<<< orphan*/  MMC_RISR_RXWATCHDOGERROR_LEN ; 
 int /*<<< orphan*/  MMC_RISR_RXWATCHDOGERROR_POS ; 
 int /*<<< orphan*/  MMC_RX1024TOMAXOCTETS_GB_LO ; 
 int /*<<< orphan*/  MMC_RX128TO255OCTETS_GB_LO ; 
 int /*<<< orphan*/  MMC_RX256TO511OCTETS_GB_LO ; 
 int /*<<< orphan*/  MMC_RX512TO1023OCTETS_GB_LO ; 
 int /*<<< orphan*/  MMC_RX64OCTETS_GB_LO ; 
 int /*<<< orphan*/  MMC_RX65TO127OCTETS_GB_LO ; 
 int /*<<< orphan*/  MMC_RXBROADCASTFRAMES_G_LO ; 
 int /*<<< orphan*/  MMC_RXCRCERROR_LO ; 
 int /*<<< orphan*/  MMC_RXFIFOOVERFLOW_LO ; 
 int /*<<< orphan*/  MMC_RXFRAMECOUNT_GB_LO ; 
 int /*<<< orphan*/  MMC_RXJABBERERROR ; 
 int /*<<< orphan*/  MMC_RXLENGTHERROR_LO ; 
 int /*<<< orphan*/  MMC_RXMULTICASTFRAMES_G_LO ; 
 int /*<<< orphan*/  MMC_RXOCTETCOUNT_GB_LO ; 
 int /*<<< orphan*/  MMC_RXOCTETCOUNT_G_LO ; 
 int /*<<< orphan*/  MMC_RXOUTOFRANGETYPE_LO ; 
 int /*<<< orphan*/  MMC_RXOVERSIZE_G ; 
 int /*<<< orphan*/  MMC_RXPAUSEFRAMES_LO ; 
 int /*<<< orphan*/  MMC_RXRUNTERROR ; 
 int /*<<< orphan*/  MMC_RXUNDERSIZE_G ; 
 int /*<<< orphan*/  MMC_RXUNICASTFRAMES_G_LO ; 
 int /*<<< orphan*/  MMC_RXVLANFRAMES_GB_LO ; 
 int /*<<< orphan*/  MMC_RXWATCHDOGERROR ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (struct xlgmac_pdata*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xlgmac_pdata *pdata)
{
	unsigned int mmc_isr = FUNC1(pdata->mac_regs + MMC_RISR);
	struct xlgmac_stats *stats = &pdata->stats;

	if (FUNC0(mmc_isr,
				MMC_RISR_RXFRAMECOUNT_GB_POS,
				MMC_RISR_RXFRAMECOUNT_GB_LEN))
		stats->rxframecount_gb +=
			FUNC2(pdata, MMC_RXFRAMECOUNT_GB_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXOCTETCOUNT_GB_POS,
				MMC_RISR_RXOCTETCOUNT_GB_LEN))
		stats->rxoctetcount_gb +=
			FUNC2(pdata, MMC_RXOCTETCOUNT_GB_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXOCTETCOUNT_G_POS,
				MMC_RISR_RXOCTETCOUNT_G_LEN))
		stats->rxoctetcount_g +=
			FUNC2(pdata, MMC_RXOCTETCOUNT_G_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXBROADCASTFRAMES_G_POS,
				MMC_RISR_RXBROADCASTFRAMES_G_LEN))
		stats->rxbroadcastframes_g +=
			FUNC2(pdata, MMC_RXBROADCASTFRAMES_G_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXMULTICASTFRAMES_G_POS,
				MMC_RISR_RXMULTICASTFRAMES_G_LEN))
		stats->rxmulticastframes_g +=
			FUNC2(pdata, MMC_RXMULTICASTFRAMES_G_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXCRCERROR_POS,
				MMC_RISR_RXCRCERROR_LEN))
		stats->rxcrcerror +=
			FUNC2(pdata, MMC_RXCRCERROR_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXRUNTERROR_POS,
				MMC_RISR_RXRUNTERROR_LEN))
		stats->rxrunterror +=
			FUNC2(pdata, MMC_RXRUNTERROR);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXJABBERERROR_POS,
				MMC_RISR_RXJABBERERROR_LEN))
		stats->rxjabbererror +=
			FUNC2(pdata, MMC_RXJABBERERROR);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXUNDERSIZE_G_POS,
				MMC_RISR_RXUNDERSIZE_G_LEN))
		stats->rxundersize_g +=
			FUNC2(pdata, MMC_RXUNDERSIZE_G);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXOVERSIZE_G_POS,
				MMC_RISR_RXOVERSIZE_G_LEN))
		stats->rxoversize_g +=
			FUNC2(pdata, MMC_RXOVERSIZE_G);

	if (FUNC0(mmc_isr,
				MMC_RISR_RX64OCTETS_GB_POS,
				MMC_RISR_RX64OCTETS_GB_LEN))
		stats->rx64octets_gb +=
			FUNC2(pdata, MMC_RX64OCTETS_GB_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RX65TO127OCTETS_GB_POS,
				MMC_RISR_RX65TO127OCTETS_GB_LEN))
		stats->rx65to127octets_gb +=
			FUNC2(pdata, MMC_RX65TO127OCTETS_GB_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RX128TO255OCTETS_GB_POS,
				MMC_RISR_RX128TO255OCTETS_GB_LEN))
		stats->rx128to255octets_gb +=
			FUNC2(pdata, MMC_RX128TO255OCTETS_GB_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RX256TO511OCTETS_GB_POS,
				MMC_RISR_RX256TO511OCTETS_GB_LEN))
		stats->rx256to511octets_gb +=
			FUNC2(pdata, MMC_RX256TO511OCTETS_GB_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RX512TO1023OCTETS_GB_POS,
				MMC_RISR_RX512TO1023OCTETS_GB_LEN))
		stats->rx512to1023octets_gb +=
			FUNC2(pdata, MMC_RX512TO1023OCTETS_GB_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RX1024TOMAXOCTETS_GB_POS,
				MMC_RISR_RX1024TOMAXOCTETS_GB_LEN))
		stats->rx1024tomaxoctets_gb +=
			FUNC2(pdata, MMC_RX1024TOMAXOCTETS_GB_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXUNICASTFRAMES_G_POS,
				MMC_RISR_RXUNICASTFRAMES_G_LEN))
		stats->rxunicastframes_g +=
			FUNC2(pdata, MMC_RXUNICASTFRAMES_G_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXLENGTHERROR_POS,
				MMC_RISR_RXLENGTHERROR_LEN))
		stats->rxlengtherror +=
			FUNC2(pdata, MMC_RXLENGTHERROR_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXOUTOFRANGETYPE_POS,
				MMC_RISR_RXOUTOFRANGETYPE_LEN))
		stats->rxoutofrangetype +=
			FUNC2(pdata, MMC_RXOUTOFRANGETYPE_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXPAUSEFRAMES_POS,
				MMC_RISR_RXPAUSEFRAMES_LEN))
		stats->rxpauseframes +=
			FUNC2(pdata, MMC_RXPAUSEFRAMES_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXFIFOOVERFLOW_POS,
				MMC_RISR_RXFIFOOVERFLOW_LEN))
		stats->rxfifooverflow +=
			FUNC2(pdata, MMC_RXFIFOOVERFLOW_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXVLANFRAMES_GB_POS,
				MMC_RISR_RXVLANFRAMES_GB_LEN))
		stats->rxvlanframes_gb +=
			FUNC2(pdata, MMC_RXVLANFRAMES_GB_LO);

	if (FUNC0(mmc_isr,
				MMC_RISR_RXWATCHDOGERROR_POS,
				MMC_RISR_RXWATCHDOGERROR_LEN))
		stats->rxwatchdogerror +=
			FUNC2(pdata, MMC_RXWATCHDOGERROR);
}