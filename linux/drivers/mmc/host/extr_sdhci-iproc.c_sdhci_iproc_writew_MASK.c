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
struct sdhci_iproc_host {int is_blk_shadowed; int shadow_blk; int shadow_cmd; int is_cmd_shadowed; } ;
struct sdhci_host {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SDHCI_BLOCK_COUNT ; 
 int SDHCI_BLOCK_SIZE ; 
 int SDHCI_COMMAND ; 
 int SDHCI_TRANSFER_MODE ; 
 int FUNC1 (struct sdhci_host*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,int,int) ; 
 struct sdhci_iproc_host* FUNC3 (struct sdhci_pltfm_host*) ; 
 struct sdhci_pltfm_host* FUNC4 (struct sdhci_host*) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host, u16 val, int reg)
{
	struct sdhci_pltfm_host *pltfm_host = FUNC4(host);
	struct sdhci_iproc_host *iproc_host = FUNC3(pltfm_host);
	u32 word_shift = FUNC0(reg);
	u32 mask = 0xffff << word_shift;
	u32 oldval, newval;

	if (reg == SDHCI_COMMAND) {
		/* Write the block now as we are issuing a command */
		if (iproc_host->is_blk_shadowed) {
			FUNC2(host, iproc_host->shadow_blk,
				SDHCI_BLOCK_SIZE);
			iproc_host->is_blk_shadowed = false;
		}
		oldval = iproc_host->shadow_cmd;
		iproc_host->is_cmd_shadowed = false;
	} else if ((reg == SDHCI_BLOCK_SIZE || reg == SDHCI_BLOCK_COUNT) &&
		   iproc_host->is_blk_shadowed) {
		/* Block size and count are stored in shadow reg */
		oldval = iproc_host->shadow_blk;
	} else {
		/* Read reg, all other registers are not shadowed */
		oldval = FUNC1(host, (reg & ~3));
	}
	newval = (oldval & ~mask) | (val << word_shift);

	if (reg == SDHCI_TRANSFER_MODE) {
		/* Save the transfer mode until the command is issued */
		iproc_host->shadow_cmd = newval;
		iproc_host->is_cmd_shadowed = true;
	} else if (reg == SDHCI_BLOCK_SIZE || reg == SDHCI_BLOCK_COUNT) {
		/* Save the block info until the command is issued */
		iproc_host->shadow_blk = newval;
		iproc_host->is_blk_shadowed = true;
	} else {
		/* Command or other regular 32-bit write */
		FUNC2(host, newval, reg & ~3);
	}
}