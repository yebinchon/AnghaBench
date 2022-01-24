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
typedef  size_t u16 ;
struct p54_common {int /*<<< orphan*/  conf_mutex; int /*<<< orphan*/ * qos_params; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int /*<<< orphan*/  txop; int /*<<< orphan*/  cw_max; int /*<<< orphan*/  cw_min; int /*<<< orphan*/  aifs; } ;
struct ieee80211_hw {struct p54_common* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct p54_common*) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *dev,
		       struct ieee80211_vif *vif, u16 queue,
		       const struct ieee80211_tx_queue_params *params)
{
	struct p54_common *priv = dev->priv;
	int ret;

	FUNC1(&priv->conf_mutex);
	FUNC0(priv->qos_params[queue], params->aifs,
		      params->cw_min, params->cw_max, params->txop);
	ret = FUNC3(priv);
	FUNC2(&priv->conf_mutex);
	return ret;
}