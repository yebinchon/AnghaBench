#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct iwl_rxq {int dummy; } ;
struct TYPE_2__ {scalar_t__ mq_rx_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,struct iwl_rxq*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,struct iwl_rxq*) ; 

__attribute__((used)) static
void FUNC2(struct iwl_trans *trans, struct iwl_rxq *rxq)
{
	if (trans->trans_cfg->mq_rx_supported)
		FUNC0(trans, rxq);
	else
		FUNC1(trans, rxq);
}