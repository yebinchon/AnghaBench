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
struct hns_nic_priv {int /*<<< orphan*/  tx_timeout_count; int /*<<< orphan*/  state; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIC_STATE2_RESET_REQUESTED ; 
 int /*<<< orphan*/  NIC_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct hns_nic_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hns_nic_priv *priv)
{
	/* Do the reset outside of interrupt context */
	if (!FUNC3(NIC_STATE_DOWN, &priv->state)) {
		FUNC2(NIC_STATE2_RESET_REQUESTED, &priv->state);
		FUNC1(priv->netdev,
			    "initiating reset due to tx timeout(%llu,0x%lx)\n",
			    priv->tx_timeout_count, priv->state);
		priv->tx_timeout_count++;
		FUNC0(priv);
	}
}