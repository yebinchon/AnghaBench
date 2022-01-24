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
struct ath10k_pci_pipe {scalar_t__ buf_sz; struct ath10k_ce_pipe* ce_hdl; struct ath10k* hif_ce_state; } ;
struct ath10k_pci {int /*<<< orphan*/  rx_post_retry; } ;
struct ath10k_ce_pipe {int /*<<< orphan*/  dest_ring; } ;
struct ath10k_ce {int /*<<< orphan*/  ce_lock; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 scalar_t__ ATH10K_PCI_RX_POST_RETRY_MS ; 
 int ENOSPC ; 
 int FUNC0 (struct ath10k_ce_pipe*) ; 
 int FUNC1 (struct ath10k_pci_pipe*) ; 
 struct ath10k_ce* FUNC2 (struct ath10k*) ; 
 struct ath10k_pci* FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ath10k_pci_pipe *pipe)
{
	struct ath10k *ar = pipe->hif_ce_state;
	struct ath10k_pci *ar_pci = FUNC3(ar);
	struct ath10k_ce *ce = FUNC2(ar);
	struct ath10k_ce_pipe *ce_pipe = pipe->ce_hdl;
	int ret, num;

	if (pipe->buf_sz == 0)
		return;

	if (!ce_pipe->dest_ring)
		return;

	FUNC6(&ce->ce_lock);
	num = FUNC0(ce_pipe);
	FUNC7(&ce->ce_lock);

	while (num >= 0) {
		ret = FUNC1(pipe);
		if (ret) {
			if (ret == -ENOSPC)
				break;
			FUNC4(ar, "failed to post pci rx buf: %d\n", ret);
			FUNC5(&ar_pci->rx_post_retry, jiffies +
				  ATH10K_PCI_RX_POST_RETRY_MS);
			break;
		}
		num--;
	}
}