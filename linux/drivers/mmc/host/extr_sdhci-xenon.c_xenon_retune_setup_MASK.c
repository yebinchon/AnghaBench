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
typedef  int /*<<< orphan*/  u32 ;
struct xenon_priv {int tuning_count; } ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_host {int tuning_count; int /*<<< orphan*/  tuning_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDHCI_INT_ENABLE ; 
 int /*<<< orphan*/  SDHCI_INT_RETUNE ; 
 int /*<<< orphan*/  SDHCI_SIGNAL_ENABLE ; 
 int /*<<< orphan*/  SDHCI_TUNING_MODE_1 ; 
 int /*<<< orphan*/  XENON_RETUNING_COMPATIBLE ; 
 int /*<<< orphan*/  XENON_SLOT_RETUNING_REQ_CTRL ; 
 struct xenon_priv* FUNC0 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC1 (struct sdhci_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sdhci_host *host)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC1(host);
	struct xenon_priv *priv = FUNC0(pltfm_host);
	u32 reg;

	/* Disable the Re-Tuning Request functionality */
	reg = FUNC2(host, XENON_SLOT_RETUNING_REQ_CTRL);
	reg &= ~XENON_RETUNING_COMPATIBLE;
	FUNC3(host, reg, XENON_SLOT_RETUNING_REQ_CTRL);

	/* Disable the Re-tuning Interrupt */
	reg = FUNC2(host, SDHCI_SIGNAL_ENABLE);
	reg &= ~SDHCI_INT_RETUNE;
	FUNC3(host, reg, SDHCI_SIGNAL_ENABLE);
	reg = FUNC2(host, SDHCI_INT_ENABLE);
	reg &= ~SDHCI_INT_RETUNE;
	FUNC3(host, reg, SDHCI_INT_ENABLE);

	/* Force to use Tuning Mode 1 */
	host->tuning_mode = SDHCI_TUNING_MODE_1;
	/* Set re-tuning period */
	host->tuning_count = 1 << (priv->tuning_count - 1);
}