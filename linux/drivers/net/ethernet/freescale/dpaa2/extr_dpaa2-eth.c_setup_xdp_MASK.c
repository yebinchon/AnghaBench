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
struct net_device {int /*<<< orphan*/  mtu; } ;
struct dpaa2_eth_priv {int num_channels; struct dpaa2_eth_channel** channel; int /*<<< orphan*/  xdp_prog; } ;
struct TYPE_2__ {int /*<<< orphan*/  prog; } ;
struct dpaa2_eth_channel {TYPE_1__ xdp; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct bpf_prog*) ; 
 int FUNC1 (struct bpf_prog*) ; 
 struct bpf_prog* FUNC2 (struct bpf_prog*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_prog*,int) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct dpaa2_eth_priv* FUNC7 (struct net_device*) ; 
 int FUNC8 (struct net_device*) ; 
 int FUNC9 (struct dpaa2_eth_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct dpaa2_eth_priv*,int) ; 
 struct bpf_prog* FUNC11 (int /*<<< orphan*/ *,struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC12 (struct dpaa2_eth_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev, struct bpf_prog *prog)
{
	struct dpaa2_eth_priv *priv = FUNC7(dev);
	struct dpaa2_eth_channel *ch;
	struct bpf_prog *old;
	bool up, need_update;
	int i, err;

	if (prog && !FUNC12(priv, dev->mtu))
		return -EINVAL;

	if (prog) {
		prog = FUNC2(prog, priv->num_channels);
		if (FUNC0(prog))
			return FUNC1(prog);
	}

	up = FUNC8(dev);
	need_update = (!!priv->xdp_prog != !!prog);

	if (up)
		FUNC6(dev);

	/* While in xdp mode, enforce a maximum Rx frame size based on MTU.
	 * Also, when switching between xdp/non-xdp modes we need to reconfigure
	 * our Rx buffer layout. Buffer pool was drained on dpaa2_eth_stop,
	 * so we are sure no old format buffers will be used from now on.
	 */
	if (need_update) {
		err = FUNC9(priv, dev->mtu, !!prog);
		if (err)
			goto out_err;
		err = FUNC10(priv, !!prog);
		if (err)
			goto out_err;
	}

	old = FUNC11(&priv->xdp_prog, prog);
	if (old)
		FUNC3(old);

	for (i = 0; i < priv->num_channels; i++) {
		ch = priv->channel[i];
		old = FUNC11(&ch->xdp.prog, prog);
		if (old)
			FUNC3(old);
	}

	if (up) {
		err = FUNC5(dev);
		if (err)
			return err;
	}

	return 0;

out_err:
	if (prog)
		FUNC4(prog, priv->num_channels);
	if (up)
		FUNC5(dev);

	return err;
}