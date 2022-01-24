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
struct ath10k_pci {int /*<<< orphan*/  dump_work; } ;
struct ath10k {int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 struct ath10k_pci* FUNC0 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC0(ar);

	FUNC1(ar->workqueue, &ar_pci->dump_work);
}