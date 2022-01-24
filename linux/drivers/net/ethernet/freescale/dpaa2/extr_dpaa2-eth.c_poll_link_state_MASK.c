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
struct dpaa2_eth_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPAA2_ETH_LINK_STATE_REFRESH ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(void *arg)
{
	struct dpaa2_eth_priv *priv = (struct dpaa2_eth_priv *)arg;
	int err;

	while (!FUNC0()) {
		err = FUNC1(priv);
		if (FUNC3(err))
			return err;

		FUNC2(DPAA2_ETH_LINK_STATE_REFRESH);
	}

	return 0;
}