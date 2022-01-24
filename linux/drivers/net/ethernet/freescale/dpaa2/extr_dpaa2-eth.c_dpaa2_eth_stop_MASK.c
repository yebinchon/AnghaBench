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
struct net_device {int dummy; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  mc_token; int /*<<< orphan*/  mc_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct dpaa2_eth_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct dpaa2_eth_priv*) ; 

__attribute__((used)) static int FUNC11(struct net_device *net_dev)
{
	struct dpaa2_eth_priv *priv = FUNC5(net_dev);
	int dpni_enabled = 0;
	int retries = 10;

	FUNC8(net_dev);
	FUNC7(net_dev);

	/* On dpni_disable(), the MC firmware will:
	 * - stop MAC Rx and wait for all Rx frames to be enqueued to software
	 * - cut off WRIOP dequeues from egress FQs and wait until transmission
	 * of all in flight Tx frames is finished (and corresponding Tx conf
	 * frames are enqueued back to software)
	 *
	 * Before calling dpni_disable(), we wait for all Tx frames to arrive
	 * on WRIOP. After it finishes, wait until all remaining frames on Rx
	 * and Tx conf queues are consumed on NAPI poll.
	 */
	FUNC9(priv);

	do {
		FUNC1(priv->mc_io, 0, priv->mc_token);
		FUNC2(priv->mc_io, 0, priv->mc_token, &dpni_enabled);
		if (dpni_enabled)
			/* Allow the hardware some slack */
			FUNC4(100);
	} while (dpni_enabled && --retries);
	if (!retries) {
		FUNC6(net_dev, "Retry count exceeded disabling DPNI\n");
		/* Must go on and disable NAPI nonetheless, so we don't crash at
		 * the next "ifconfig up"
		 */
	}

	FUNC10(priv);
	FUNC0(priv);

	/* Empty the buffer pool */
	FUNC3(priv);

	return 0;
}