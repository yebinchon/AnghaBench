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
struct ath10k_pci {scalar_t__ oper_irq_mode; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 scalar_t__ ATH10K_PCI_IRQ_LEGACY ; 
 int /*<<< orphan*/  ATH10K_PCI_TARGET_WAIT ; 
 int ECOMM ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FW_INDICATOR_ADDRESS ; 
 int FW_IND_EVENT_PENDING ; 
 int FW_IND_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 struct ath10k_pci* FUNC5 (struct ath10k*) ; 
 int FUNC6 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k*,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (unsigned long,unsigned long) ; 

int FUNC11(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC5(ar);
	unsigned long timeout;
	u32 val;

	FUNC0(ar, ATH10K_DBG_BOOT, "boot waiting target to initialise\n");

	timeout = jiffies + FUNC9(ATH10K_PCI_TARGET_WAIT);

	do {
		val = FUNC6(ar, FW_INDICATOR_ADDRESS);

		FUNC0(ar, ATH10K_DBG_BOOT, "boot target indicator %x\n",
			   val);

		/* target should never return this */
		if (val == 0xffffffff)
			continue;

		/* the device has crashed so don't bother trying anymore */
		if (val & FW_IND_EVENT_PENDING)
			break;

		if (val & FW_IND_INITIALIZED)
			break;

		if (ar_pci->oper_irq_mode == ATH10K_PCI_IRQ_LEGACY)
			/* Fix potential race by repeating CORE_BASE writes */
			FUNC3(ar);

		FUNC8(10);
	} while (FUNC10(jiffies, timeout));

	FUNC2(ar);
	FUNC4(ar);

	if (val == 0xffffffff) {
		FUNC1(ar, "failed to read device register, device is gone\n");
		return -EIO;
	}

	if (val & FW_IND_EVENT_PENDING) {
		FUNC7(ar, "device has crashed during init\n");
		return -ECOMM;
	}

	if (!(val & FW_IND_INITIALIZED)) {
		FUNC1(ar, "failed to receive initialized event from target: %08x\n",
			   val);
		return -ETIMEDOUT;
	}

	FUNC0(ar, ATH10K_DBG_BOOT, "boot target initialised\n");
	return 0;
}