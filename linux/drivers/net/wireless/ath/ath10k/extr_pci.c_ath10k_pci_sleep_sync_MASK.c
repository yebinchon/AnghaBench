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
struct ath10k_pci {scalar_t__ pci_ps; scalar_t__ ps_wake_refcount; int /*<<< orphan*/  ps_lock; int /*<<< orphan*/  ps_timer; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*) ; 
 struct ath10k_pci* FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC3(ar);
	unsigned long flags;

	if (ar_pci->pci_ps == 0) {
		FUNC2(ar);
		return;
	}

	FUNC4(&ar_pci->ps_timer);

	FUNC5(&ar_pci->ps_lock, flags);
	FUNC0(ar_pci->ps_wake_refcount > 0);
	FUNC1(ar);
	FUNC6(&ar_pci->ps_lock, flags);
}