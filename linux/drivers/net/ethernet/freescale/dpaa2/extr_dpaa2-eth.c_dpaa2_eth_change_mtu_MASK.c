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
struct net_device {int mtu; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  xdp_prog; } ;

/* Variables and functions */
 int EINVAL ; 
 struct dpaa2_eth_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct dpaa2_eth_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa2_eth_priv*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int new_mtu)
{
	struct dpaa2_eth_priv *priv = FUNC0(dev);
	int err;

	if (!priv->xdp_prog)
		goto out;

	if (!FUNC2(priv, new_mtu))
		return -EINVAL;

	err = FUNC1(priv, new_mtu, true);
	if (err)
		return err;

out:
	dev->mtu = new_mtu;
	return 0;
}