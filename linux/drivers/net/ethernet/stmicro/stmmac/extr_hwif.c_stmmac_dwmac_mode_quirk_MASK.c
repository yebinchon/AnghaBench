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
struct stmmac_priv {int /*<<< orphan*/  mode; int /*<<< orphan*/  device; scalar_t__ chain_mode; struct mac_device_info* hw; } ;
struct mac_device_info {int /*<<< orphan*/ * mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  STMMAC_CHAIN_MODE ; 
 int /*<<< orphan*/  STMMAC_RING_MODE ; 
 int /*<<< orphan*/  chain_mode_ops ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ring_mode_ops ; 

__attribute__((used)) static void FUNC1(struct stmmac_priv *priv)
{
	struct mac_device_info *mac = priv->hw;

	if (priv->chain_mode) {
		FUNC0(priv->device, "Chain mode enabled\n");
		priv->mode = STMMAC_CHAIN_MODE;
		mac->mode = &chain_mode_ops;
	} else {
		FUNC0(priv->device, "Ring mode enabled\n");
		priv->mode = STMMAC_RING_MODE;
		mac->mode = &ring_mode_ops;
	}
}