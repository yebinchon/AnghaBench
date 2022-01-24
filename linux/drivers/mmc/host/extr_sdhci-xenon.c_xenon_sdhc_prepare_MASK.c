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
typedef  int /*<<< orphan*/  u8 ;
struct xenon_priv {int /*<<< orphan*/  sdhc_id; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 struct xenon_priv* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sdhci_host*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct xenon_priv *priv = FUNC0(pltfm_host);
	u8 sdhc_id = priv->sdhc_id;

	/* Enable SDHC */
	FUNC2(host, sdhc_id);

	/* Enable ACG */
	FUNC5(host, true);

	/* Enable Parallel Transfer Mode */
	FUNC3(host, sdhc_id);

	/* Disable SDCLK-Off-While-Idle before card init */
	FUNC6(host, sdhc_id, false);

	FUNC4(host);

	return 0;
}