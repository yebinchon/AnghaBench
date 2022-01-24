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
struct sdhci_host {int flags; } ;

/* Variables and functions */
 scalar_t__ SDHCI_ADMA_ADDRESS ; 
 scalar_t__ SDHCI_ADMA_ADDRESS_HI ; 
 scalar_t__ SDHCI_ADMA_ERROR ; 
 scalar_t__ SDHCI_ARGUMENT ; 
 int /*<<< orphan*/  SDHCI_AUTO_CMD_STATUS ; 
 int /*<<< orphan*/  SDHCI_BLOCK_COUNT ; 
 int /*<<< orphan*/  SDHCI_BLOCK_GAP_CONTROL ; 
 int /*<<< orphan*/  SDHCI_BLOCK_SIZE ; 
 scalar_t__ SDHCI_CAPABILITIES ; 
 scalar_t__ SDHCI_CAPABILITIES_1 ; 
 int /*<<< orphan*/  SDHCI_CLOCK_CONTROL ; 
 int /*<<< orphan*/  SDHCI_COMMAND ; 
 scalar_t__ SDHCI_DMA_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL ; 
 int /*<<< orphan*/  SDHCI_HOST_CONTROL2 ; 
 int /*<<< orphan*/  SDHCI_HOST_VERSION ; 
 scalar_t__ SDHCI_INT_ENABLE ; 
 scalar_t__ SDHCI_INT_STATUS ; 
 scalar_t__ SDHCI_MAX_CURRENT ; 
 int /*<<< orphan*/  SDHCI_POWER_CONTROL ; 
 scalar_t__ SDHCI_PRESENT_STATE ; 
 scalar_t__ SDHCI_RESPONSE ; 
 scalar_t__ SDHCI_SIGNAL_ENABLE ; 
 int /*<<< orphan*/  SDHCI_SLOT_INT_STATUS ; 
 int /*<<< orphan*/  SDHCI_TIMEOUT_CONTROL ; 
 int /*<<< orphan*/  SDHCI_TRANSFER_MODE ; 
 int SDHCI_USE_64_BIT_DMA ; 
 int SDHCI_USE_ADMA ; 
 int /*<<< orphan*/  SDHCI_WAKE_UP_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sdhci_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sdhci_host*,int /*<<< orphan*/ ) ; 

void FUNC4(struct sdhci_host *host)
{
	FUNC0("============ SDHCI REGISTER DUMP ===========\n");

	FUNC0("Sys addr:  0x%08x | Version:  0x%08x\n",
		   FUNC2(host, SDHCI_DMA_ADDRESS),
		   FUNC3(host, SDHCI_HOST_VERSION));
	FUNC0("Blk size:  0x%08x | Blk cnt:  0x%08x\n",
		   FUNC3(host, SDHCI_BLOCK_SIZE),
		   FUNC3(host, SDHCI_BLOCK_COUNT));
	FUNC0("Argument:  0x%08x | Trn mode: 0x%08x\n",
		   FUNC2(host, SDHCI_ARGUMENT),
		   FUNC3(host, SDHCI_TRANSFER_MODE));
	FUNC0("Present:   0x%08x | Host ctl: 0x%08x\n",
		   FUNC2(host, SDHCI_PRESENT_STATE),
		   FUNC1(host, SDHCI_HOST_CONTROL));
	FUNC0("Power:     0x%08x | Blk gap:  0x%08x\n",
		   FUNC1(host, SDHCI_POWER_CONTROL),
		   FUNC1(host, SDHCI_BLOCK_GAP_CONTROL));
	FUNC0("Wake-up:   0x%08x | Clock:    0x%08x\n",
		   FUNC1(host, SDHCI_WAKE_UP_CONTROL),
		   FUNC3(host, SDHCI_CLOCK_CONTROL));
	FUNC0("Timeout:   0x%08x | Int stat: 0x%08x\n",
		   FUNC1(host, SDHCI_TIMEOUT_CONTROL),
		   FUNC2(host, SDHCI_INT_STATUS));
	FUNC0("Int enab:  0x%08x | Sig enab: 0x%08x\n",
		   FUNC2(host, SDHCI_INT_ENABLE),
		   FUNC2(host, SDHCI_SIGNAL_ENABLE));
	FUNC0("ACmd stat: 0x%08x | Slot int: 0x%08x\n",
		   FUNC3(host, SDHCI_AUTO_CMD_STATUS),
		   FUNC3(host, SDHCI_SLOT_INT_STATUS));
	FUNC0("Caps:      0x%08x | Caps_1:   0x%08x\n",
		   FUNC2(host, SDHCI_CAPABILITIES),
		   FUNC2(host, SDHCI_CAPABILITIES_1));
	FUNC0("Cmd:       0x%08x | Max curr: 0x%08x\n",
		   FUNC3(host, SDHCI_COMMAND),
		   FUNC2(host, SDHCI_MAX_CURRENT));
	FUNC0("Resp[0]:   0x%08x | Resp[1]:  0x%08x\n",
		   FUNC2(host, SDHCI_RESPONSE),
		   FUNC2(host, SDHCI_RESPONSE + 4));
	FUNC0("Resp[2]:   0x%08x | Resp[3]:  0x%08x\n",
		   FUNC2(host, SDHCI_RESPONSE + 8),
		   FUNC2(host, SDHCI_RESPONSE + 12));
	FUNC0("Host ctl2: 0x%08x\n",
		   FUNC3(host, SDHCI_HOST_CONTROL2));

	if (host->flags & SDHCI_USE_ADMA) {
		if (host->flags & SDHCI_USE_64_BIT_DMA) {
			FUNC0("ADMA Err:  0x%08x | ADMA Ptr: 0x%08x%08x\n",
				   FUNC2(host, SDHCI_ADMA_ERROR),
				   FUNC2(host, SDHCI_ADMA_ADDRESS_HI),
				   FUNC2(host, SDHCI_ADMA_ADDRESS));
		} else {
			FUNC0("ADMA Err:  0x%08x | ADMA Ptr: 0x%08x\n",
				   FUNC2(host, SDHCI_ADMA_ERROR),
				   FUNC2(host, SDHCI_ADMA_ADDRESS));
		}
	}

	FUNC0("============================================\n");
}