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
struct xenon_priv {int /*<<< orphan*/  init_card_type; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;
struct mmc_host {int dummy; } ;
struct mmc_card {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 struct sdhci_host* FUNC0 (struct mmc_host*) ; 
 struct xenon_priv* FUNC1 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC2 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC3(struct mmc_host *mmc, struct mmc_card *card)
{
	struct sdhci_host *host = FUNC0(mmc);
	struct sdhci_pltfm_host *pltfm_host = FUNC2(host);
	struct xenon_priv *priv = FUNC1(pltfm_host);

	/* Update card type*/
	priv->init_card_type = card->type;
}