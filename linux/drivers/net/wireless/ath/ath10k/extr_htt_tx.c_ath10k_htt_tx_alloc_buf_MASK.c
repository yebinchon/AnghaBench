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
struct ath10k_htt {struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath10k*,char*,int) ; 
 int FUNC1 (struct ath10k_htt*) ; 
 int FUNC2 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k_htt*) ; 
 int FUNC5 (struct ath10k_htt*) ; 
 int FUNC6 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath10k_htt*) ; 

__attribute__((used)) static int FUNC8(struct ath10k_htt *htt)
{
	struct ath10k *ar = htt->ar;
	int ret;

	ret = FUNC2(htt);
	if (ret) {
		FUNC0(ar, "failed to alloc cont tx buffer: %d\n", ret);
		return ret;
	}

	ret = FUNC1(htt);
	if (ret) {
		FUNC0(ar, "failed to alloc cont frag desc: %d\n", ret);
		goto free_txbuf;
	}

	ret = FUNC6(htt);
	if (ret) {
		FUNC0(ar, "failed to alloc txq: %d\n", ret);
		goto free_frag_desc;
	}

	ret = FUNC5(htt);
	if (ret) {
		FUNC0(ar, "failed to alloc txdone fifo: %d\n", ret);
		goto free_txq;
	}

	return 0;

free_txq:
	FUNC7(htt);

free_frag_desc:
	FUNC3(htt);

free_txbuf:
	FUNC4(htt);

	return ret;
}