#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct TYPE_4__ {TYPE_1__* pdev_param; } ;
struct ath10k {scalar_t__ state; TYPE_2__ wmi; void* cfg_rx_chainmask; void* cfg_tx_chainmask; int /*<<< orphan*/  conf_mutex; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_chain_mask; int /*<<< orphan*/  tx_chain_mask; } ;

/* Variables and functions */
 scalar_t__ ATH10K_STATE_ON ; 
 scalar_t__ ATH10K_STATE_RESTARTED ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,void*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int,void*) ; 
 int FUNC3 (struct ath10k*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ath10k *ar, u32 tx_ant, u32 rx_ant)
{
	int ret;

	FUNC4(&ar->conf_mutex);

	FUNC0(ar, tx_ant, "tx");
	FUNC0(ar, rx_ant, "rx");

	ar->cfg_tx_chainmask = tx_ant;
	ar->cfg_rx_chainmask = rx_ant;

	if ((ar->state != ATH10K_STATE_ON) &&
	    (ar->state != ATH10K_STATE_RESTARTED))
		return 0;

	ret = FUNC3(ar, ar->wmi.pdev_param->tx_chain_mask,
					tx_ant);
	if (ret) {
		FUNC2(ar, "failed to set tx-chainmask: %d, req 0x%x\n",
			    ret, tx_ant);
		return ret;
	}

	ret = FUNC3(ar, ar->wmi.pdev_param->rx_chain_mask,
					rx_ant);
	if (ret) {
		FUNC2(ar, "failed to set rx-chainmask: %d, req 0x%x\n",
			    ret, rx_ant);
		return ret;
	}

	/* Reload HT/VHT capability */
	FUNC1(ar);

	return 0;
}