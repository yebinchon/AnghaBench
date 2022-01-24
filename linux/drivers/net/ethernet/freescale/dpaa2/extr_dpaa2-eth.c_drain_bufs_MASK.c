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
typedef  int /*<<< orphan*/  u64 ;
struct dpaa2_eth_priv {int /*<<< orphan*/  net_dev; int /*<<< orphan*/  bpid; } ;

/* Variables and functions */
 int DPAA2_ETH_BUFS_PER_CMD ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dpaa2_eth_priv*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC3(struct dpaa2_eth_priv *priv, int count)
{
	u64 buf_array[DPAA2_ETH_BUFS_PER_CMD];
	int ret;

	do {
		ret = FUNC0(NULL, priv->bpid,
					       buf_array, count);
		if (ret < 0) {
			FUNC2(priv->net_dev, "dpaa2_io_service_acquire() failed\n");
			return;
		}
		FUNC1(priv, buf_array, ret);
	} while (ret);
}