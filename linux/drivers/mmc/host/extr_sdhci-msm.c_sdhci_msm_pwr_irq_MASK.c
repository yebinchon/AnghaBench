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
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_msm_host {int pwr_irq_flag; } ;
struct sdhci_host {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct sdhci_msm_host*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int) ; 
 struct sdhci_msm_host* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct sdhci_host *host = (struct sdhci_host *)data;
	struct sdhci_pltfm_host *pltfm_host = FUNC3(host);
	struct sdhci_msm_host *msm_host = FUNC2(pltfm_host);

	FUNC1(host, irq);
	msm_host->pwr_irq_flag = 1;
	FUNC0(msm_host);


	return IRQ_HANDLED;
}