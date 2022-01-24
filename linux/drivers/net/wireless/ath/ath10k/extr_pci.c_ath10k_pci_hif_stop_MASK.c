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
struct ath10k_pci {scalar_t__ ps_wake_refcount; int /*<<< orphan*/  ps_lock; } ;
struct ath10k {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 struct ath10k_pci* FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC5(ar);
	unsigned long flags;

	FUNC1(ar, ATH10K_DBG_BOOT, "boot hif stop\n");

	FUNC3(ar);
	FUNC4(ar);
	FUNC8(&ar->napi);
	FUNC7(&ar->napi);

	/* Most likely the device has HTT Rx ring configured. The only way to
	 * prevent the device from accessing (and possible corrupting) host
	 * memory is to reset the chip now.
	 *
	 * There's also no known way of masking MSI interrupts on the device.
	 * For ranged MSI the CE-related interrupts can be masked. However
	 * regardless how many MSI interrupts are assigned the first one
	 * is always used for firmware indications (crashes) and cannot be
	 * masked. To prevent the device from asserting the interrupt reset it
	 * before proceeding with cleanup.
	 */
	FUNC6(ar);

	FUNC2(ar);

	FUNC9(&ar_pci->ps_lock, flags);
	FUNC0(ar_pci->ps_wake_refcount > 0);
	FUNC10(&ar_pci->ps_lock, flags);
}