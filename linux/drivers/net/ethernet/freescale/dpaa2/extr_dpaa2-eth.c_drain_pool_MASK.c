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
struct dpaa2_eth_priv {int num_channels; TYPE_1__** channel; } ;
struct TYPE_2__ {scalar_t__ buf_count; } ;

/* Variables and functions */
 int DPAA2_ETH_BUFS_PER_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct dpaa2_eth_priv*,int) ; 

__attribute__((used)) static void FUNC1(struct dpaa2_eth_priv *priv)
{
	int i;

	FUNC0(priv, DPAA2_ETH_BUFS_PER_CMD);
	FUNC0(priv, 1);

	for (i = 0; i < priv->num_channels; i++)
		priv->channel[i]->buf_count = 0;
}