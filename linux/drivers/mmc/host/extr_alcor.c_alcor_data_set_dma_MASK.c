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
typedef  scalar_t__ u32 ;
struct alcor_sdmmc_host {int /*<<< orphan*/  sg_count; scalar_t__ sg; int /*<<< orphan*/  dev; struct alcor_pci_priv* alcor_pci; } ;
struct alcor_pci_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AU6601_REG_SDMA_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct alcor_pci_priv*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct alcor_sdmmc_host *host)
{
	struct alcor_pci_priv *priv = host->alcor_pci;
	u32 addr;

	if (!host->sg_count)
		return;

	if (!host->sg) {
		FUNC1(host->dev, "have blocks, but no SG\n");
		return;
	}

	if (!FUNC3(host->sg)) {
		FUNC1(host->dev, "DMA SG len == 0\n");
		return;
	}


	addr = (u32)FUNC2(host->sg);

	FUNC0(priv, addr, AU6601_REG_SDMA_ADDR);
	host->sg = FUNC4(host->sg);
	host->sg_count--;
}