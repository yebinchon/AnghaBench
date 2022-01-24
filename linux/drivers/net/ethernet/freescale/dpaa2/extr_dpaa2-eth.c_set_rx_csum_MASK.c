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
struct dpaa2_eth_priv {int /*<<< orphan*/  net_dev; int /*<<< orphan*/  mc_token; int /*<<< orphan*/  mc_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPNI_OFF_RX_L3_CSUM ; 
 int /*<<< orphan*/  DPNI_OFF_RX_L4_CSUM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct dpaa2_eth_priv *priv, bool enable)
{
	int err;

	err = FUNC0(priv->mc_io, 0, priv->mc_token,
			       DPNI_OFF_RX_L3_CSUM, enable);
	if (err) {
		FUNC1(priv->net_dev,
			   "dpni_set_offload(RX_L3_CSUM) failed\n");
		return err;
	}

	err = FUNC0(priv->mc_io, 0, priv->mc_token,
			       DPNI_OFF_RX_L4_CSUM, enable);
	if (err) {
		FUNC1(priv->net_dev,
			   "dpni_set_offload(RX_L4_CSUM) failed\n");
		return err;
	}

	return 0;
}