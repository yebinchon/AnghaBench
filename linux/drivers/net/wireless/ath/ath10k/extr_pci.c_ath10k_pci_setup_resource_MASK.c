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
struct ath10k_pci {int /*<<< orphan*/  rx_post_retry; int /*<<< orphan*/  dump_work; int /*<<< orphan*/  ce_diag_mutex; int /*<<< orphan*/  ps_lock; } ;
struct ath10k_ce {int /*<<< orphan*/  ce_lock; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ath10k*) ; 
 scalar_t__ FUNC2 (struct ath10k*) ; 
 struct ath10k_ce* FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 
 int FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  ath10k_pci_fw_dump_work ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*) ; 
 struct ath10k_pci* FUNC7 (struct ath10k*) ; 
 int /*<<< orphan*/  ath10k_pci_rx_replenish_retry ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(struct ath10k *ar)
{
	struct ath10k_pci *ar_pci = FUNC7(ar);
	struct ath10k_ce *ce = FUNC3(ar);
	int ret;

	FUNC9(&ce->ce_lock);
	FUNC9(&ar_pci->ps_lock);
	FUNC8(&ar_pci->ce_diag_mutex);

	FUNC0(&ar_pci->dump_work, ath10k_pci_fw_dump_work);

	FUNC10(&ar_pci->rx_post_retry, ath10k_pci_rx_replenish_retry, 0);

	if (FUNC1(ar) || FUNC2(ar))
		FUNC6(ar);

	ret = FUNC5(ar);
	if (ret) {
		FUNC4(ar, "failed to allocate copy engine pipes: %d\n",
			   ret);
		return ret;
	}

	return 0;
}