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
typedef  int /*<<< orphan*/  u32 ;
struct mwifiex_private {int /*<<< orphan*/  data_rate; int /*<<< orphan*/  tx_htinfo; int /*<<< orphan*/  tx_rate; scalar_t__ is_data_rate_auto; } ;

/* Variables and functions */
 int /*<<< orphan*/  HostCmd_ACT_GEN_GET ; 
 int /*<<< orphan*/  HostCmd_CMD_802_11_TX_RATE_QUERY ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct mwifiex_private *priv, u32 *rate)
{
	int ret;

	ret = FUNC1(priv, HostCmd_CMD_802_11_TX_RATE_QUERY,
			       HostCmd_ACT_GEN_GET, 0, NULL, true);

	if (!ret) {
		if (priv->is_data_rate_auto)
			*rate = FUNC0(priv, priv->tx_rate,
							   priv->tx_htinfo);
		else
			*rate = priv->data_rate;
	}

	return ret;
}