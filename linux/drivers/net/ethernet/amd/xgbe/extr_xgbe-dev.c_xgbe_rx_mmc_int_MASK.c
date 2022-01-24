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
struct xgbe_mmc_stats {int /*<<< orphan*/  rxwatchdogerror; int /*<<< orphan*/  rxvlanframes_gb; int /*<<< orphan*/  rxfifooverflow; int /*<<< orphan*/  rxpauseframes; int /*<<< orphan*/  rxoutofrangetype; int /*<<< orphan*/  rxlengtherror; int /*<<< orphan*/  rxunicastframes_g; int /*<<< orphan*/  rx1024tomaxoctets_gb; int /*<<< orphan*/  rx512to1023octets_gb; int /*<<< orphan*/  rx256to511octets_gb; int /*<<< orphan*/  rx128to255octets_gb; int /*<<< orphan*/  rx65to127octets_gb; int /*<<< orphan*/  rx64octets_gb; int /*<<< orphan*/  rxoversize_g; int /*<<< orphan*/  rxundersize_g; int /*<<< orphan*/  rxjabbererror; int /*<<< orphan*/  rxrunterror; int /*<<< orphan*/  rxcrcerror; int /*<<< orphan*/  rxmulticastframes_g; int /*<<< orphan*/  rxbroadcastframes_g; int /*<<< orphan*/  rxoctetcount_g; int /*<<< orphan*/  rxoctetcount_gb; int /*<<< orphan*/  rxframecount_gb; } ;
struct xgbe_prv_data {struct xgbe_mmc_stats mmc_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  MMC_RISR ; 
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
 int /*<<< orphan*/  RX1024TOMAXOCTETS_GB ; 
 int /*<<< orphan*/  RX128TO255OCTETS_GB ; 
 int /*<<< orphan*/  RX256TO511OCTETS_GB ; 
 int /*<<< orphan*/  RX512TO1023OCTETS_GB ; 
 int /*<<< orphan*/  RX64OCTETS_GB ; 
 int /*<<< orphan*/  RX65TO127OCTETS_GB ; 
 int /*<<< orphan*/  RXBROADCASTFRAMES_G ; 
 int /*<<< orphan*/  RXCRCERROR ; 
 int /*<<< orphan*/  RXFIFOOVERFLOW ; 
 int /*<<< orphan*/  RXFRAMECOUNT_GB ; 
 int /*<<< orphan*/  RXJABBERERROR ; 
 int /*<<< orphan*/  RXLENGTHERROR ; 
 int /*<<< orphan*/  RXMULTICASTFRAMES_G ; 
 int /*<<< orphan*/  RXOCTETCOUNT_G ; 
 int /*<<< orphan*/  RXOCTETCOUNT_GB ; 
 int /*<<< orphan*/  RXOUTOFRANGETYPE ; 
 int /*<<< orphan*/  RXOVERSIZE_G ; 
 int /*<<< orphan*/  RXPAUSEFRAMES ; 
 int /*<<< orphan*/  RXRUNTERROR ; 
 int /*<<< orphan*/  RXUNDERSIZE_G ; 
 int /*<<< orphan*/  RXUNICASTFRAMES_G ; 
 int /*<<< orphan*/  RXVLANFRAMES_GB ; 
 int /*<<< orphan*/  RXWATCHDOGERROR ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct xgbe_prv_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xgbe_prv_data *pdata)
{
	struct xgbe_mmc_stats *stats = &pdata->mmc_stats;
	unsigned int mmc_isr = FUNC1(pdata, MMC_RISR);

	if (FUNC0(mmc_isr, MMC_RISR, RXFRAMECOUNT_GB))
		stats->rxframecount_gb +=
			FUNC2(pdata, MMC_RXFRAMECOUNT_GB_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXOCTETCOUNT_GB))
		stats->rxoctetcount_gb +=
			FUNC2(pdata, MMC_RXOCTETCOUNT_GB_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXOCTETCOUNT_G))
		stats->rxoctetcount_g +=
			FUNC2(pdata, MMC_RXOCTETCOUNT_G_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXBROADCASTFRAMES_G))
		stats->rxbroadcastframes_g +=
			FUNC2(pdata, MMC_RXBROADCASTFRAMES_G_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXMULTICASTFRAMES_G))
		stats->rxmulticastframes_g +=
			FUNC2(pdata, MMC_RXMULTICASTFRAMES_G_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXCRCERROR))
		stats->rxcrcerror +=
			FUNC2(pdata, MMC_RXCRCERROR_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXRUNTERROR))
		stats->rxrunterror +=
			FUNC2(pdata, MMC_RXRUNTERROR);

	if (FUNC0(mmc_isr, MMC_RISR, RXJABBERERROR))
		stats->rxjabbererror +=
			FUNC2(pdata, MMC_RXJABBERERROR);

	if (FUNC0(mmc_isr, MMC_RISR, RXUNDERSIZE_G))
		stats->rxundersize_g +=
			FUNC2(pdata, MMC_RXUNDERSIZE_G);

	if (FUNC0(mmc_isr, MMC_RISR, RXOVERSIZE_G))
		stats->rxoversize_g +=
			FUNC2(pdata, MMC_RXOVERSIZE_G);

	if (FUNC0(mmc_isr, MMC_RISR, RX64OCTETS_GB))
		stats->rx64octets_gb +=
			FUNC2(pdata, MMC_RX64OCTETS_GB_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RX65TO127OCTETS_GB))
		stats->rx65to127octets_gb +=
			FUNC2(pdata, MMC_RX65TO127OCTETS_GB_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RX128TO255OCTETS_GB))
		stats->rx128to255octets_gb +=
			FUNC2(pdata, MMC_RX128TO255OCTETS_GB_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RX256TO511OCTETS_GB))
		stats->rx256to511octets_gb +=
			FUNC2(pdata, MMC_RX256TO511OCTETS_GB_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RX512TO1023OCTETS_GB))
		stats->rx512to1023octets_gb +=
			FUNC2(pdata, MMC_RX512TO1023OCTETS_GB_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RX1024TOMAXOCTETS_GB))
		stats->rx1024tomaxoctets_gb +=
			FUNC2(pdata, MMC_RX1024TOMAXOCTETS_GB_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXUNICASTFRAMES_G))
		stats->rxunicastframes_g +=
			FUNC2(pdata, MMC_RXUNICASTFRAMES_G_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXLENGTHERROR))
		stats->rxlengtherror +=
			FUNC2(pdata, MMC_RXLENGTHERROR_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXOUTOFRANGETYPE))
		stats->rxoutofrangetype +=
			FUNC2(pdata, MMC_RXOUTOFRANGETYPE_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXPAUSEFRAMES))
		stats->rxpauseframes +=
			FUNC2(pdata, MMC_RXPAUSEFRAMES_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXFIFOOVERFLOW))
		stats->rxfifooverflow +=
			FUNC2(pdata, MMC_RXFIFOOVERFLOW_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXVLANFRAMES_GB))
		stats->rxvlanframes_gb +=
			FUNC2(pdata, MMC_RXVLANFRAMES_GB_LO);

	if (FUNC0(mmc_isr, MMC_RISR, RXWATCHDOGERROR))
		stats->rxwatchdogerror +=
			FUNC2(pdata, MMC_RXWATCHDOGERROR);
}