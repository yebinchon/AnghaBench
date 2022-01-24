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
struct dpni_link_state {int options; scalar_t__ up; int /*<<< orphan*/  member_0; } ;
struct dpaa2_eth_priv {struct dpni_link_state link_state; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  mc_token; int /*<<< orphan*/  mc_io; } ;

/* Variables and functions */
 int DPNI_LINK_OPT_ASYM_PAUSE ; 
 int DPNI_LINK_OPT_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct dpaa2_eth_priv*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpni_link_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct dpaa2_eth_priv*) ; 

__attribute__((used)) static int FUNC10(struct dpaa2_eth_priv *priv)
{
	struct dpni_link_state state = {0};
	bool tx_pause;
	int err;

	err = FUNC1(priv->mc_io, 0, priv->mc_token, &state);
	if (FUNC8(err)) {
		FUNC2(priv->net_dev,
			   "dpni_get_link_state() failed\n");
		return err;
	}

	/* If Tx pause frame settings have changed, we need to update
	 * Rx FQ taildrop configuration as well. We configure taildrop
	 * only when pause frame generation is disabled.
	 */
	tx_pause = !!(state.options & DPNI_LINK_OPT_PAUSE) ^
		   !!(state.options & DPNI_LINK_OPT_ASYM_PAUSE);
	FUNC0(priv, !tx_pause);

	/* Chech link state; speed / duplex changes are not treated yet */
	if (priv->link_state.up == state.up)
		goto out;

	if (state.up) {
		FUNC9(priv);
		FUNC5(priv->net_dev);
		FUNC6(priv->net_dev);
	} else {
		FUNC7(priv->net_dev);
		FUNC4(priv->net_dev);
	}

	FUNC3(priv->net_dev, "Link Event: state %s\n",
		    state.up ? "up" : "down");

out:
	priv->link_state = state;

	return 0;
}