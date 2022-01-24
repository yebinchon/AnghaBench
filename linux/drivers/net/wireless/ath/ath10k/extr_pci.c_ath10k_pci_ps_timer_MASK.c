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
struct timer_list {int dummy; } ;
struct ath10k_pci {scalar_t__ ps_wake_refcount; int /*<<< orphan*/  ps_lock; int /*<<< orphan*/  ps_awake; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_PCI_PS ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*) ; 
 struct ath10k_pci* ar_pci ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ath10k_pci* FUNC2 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct ath10k_pci *ar_pci = FUNC2(ar_pci, t, ps_timer);
	struct ath10k *ar = ar_pci->ar;
	unsigned long flags;

	FUNC3(&ar_pci->ps_lock, flags);

	FUNC1(ar, ATH10K_DBG_PCI_PS, "pci ps timer refcount %lu awake %d\n",
		   ar_pci->ps_wake_refcount, ar_pci->ps_awake);

	if (ar_pci->ps_wake_refcount > 0)
		goto skip;

	FUNC0(ar);

skip:
	FUNC4(&ar_pci->ps_lock, flags);
}