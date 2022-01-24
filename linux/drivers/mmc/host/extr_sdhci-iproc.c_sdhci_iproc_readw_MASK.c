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
typedef  int u32 ;
typedef  int u16 ;
struct sdhci_pltfm_host {int dummy; } ;
struct sdhci_iproc_host {int shadow_cmd; int shadow_blk; scalar_t__ is_blk_shadowed; scalar_t__ is_cmd_shadowed; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SDHCI_BLOCK_COUNT ; 
 int SDHCI_BLOCK_SIZE ; 
 int SDHCI_TRANSFER_MODE ; 
 int FUNC1 (struct sdhci_host*,int) ; 
 struct sdhci_iproc_host* FUNC2 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC3 (struct sdhci_host*) ; 

__attribute__((used)) static u16 FUNC4(struct sdhci_host *host, int reg)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC3(host);
	struct sdhci_iproc_host *iproc_host = FUNC2(pltfm_host);
	u32 val;
	u16 word;

	if ((reg == SDHCI_TRANSFER_MODE) && iproc_host->is_cmd_shadowed) {
		/* Get the saved transfer mode */
		val = iproc_host->shadow_cmd;
	} else if ((reg == SDHCI_BLOCK_SIZE || reg == SDHCI_BLOCK_COUNT) &&
		   iproc_host->is_blk_shadowed) {
		/* Get the saved block info */
		val = iproc_host->shadow_blk;
	} else {
		val = FUNC1(host, (reg & ~3));
	}
	word = val >> FUNC0(reg) & 0xffff;
	return word;
}