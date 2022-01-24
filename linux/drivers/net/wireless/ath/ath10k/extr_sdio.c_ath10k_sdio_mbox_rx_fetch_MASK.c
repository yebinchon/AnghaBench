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
struct ath10k_sdio {int n_rx_pkts; int /*<<< orphan*/ * rx_pkts; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ath10k*,int /*<<< orphan*/ *) ; 
 struct ath10k_sdio* FUNC2 (struct ath10k*) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar)
{
	struct ath10k_sdio *ar_sdio = FUNC2(ar);
	int ret, i;

	for (i = 0; i < ar_sdio->n_rx_pkts; i++) {
		ret = FUNC1(ar,
						 &ar_sdio->rx_pkts[i]);
		if (ret)
			goto err;
	}

	return 0;

err:
	/* Free all packets that was not successfully fetched. */
	for (; i < ar_sdio->n_rx_pkts; i++)
		FUNC0(&ar_sdio->rx_pkts[i]);

	return ret;
}