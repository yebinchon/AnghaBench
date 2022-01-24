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
struct p54_common {int (* open ) (struct ieee80211_hw*) ;int /*<<< orphan*/  conf_mutex; scalar_t__ softled_state; int /*<<< orphan*/  work; int /*<<< orphan*/  mode; int /*<<< orphan*/  bssid; int /*<<< orphan*/ * qos_params; } ;
struct ieee80211_hw {struct p54_common* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct p54_common*) ; 
 int FUNC6 (struct p54_common*) ; 
 int FUNC7 (struct p54_common*) ; 
 int FUNC8 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC9(struct ieee80211_hw *dev)
{
	struct p54_common *priv = dev->priv;
	int err;

	FUNC3(&priv->conf_mutex);
	err = priv->open(dev);
	if (err)
		goto out;
	FUNC0(priv->qos_params[0], 0x0002, 0x0003, 0x0007, 47);
	FUNC0(priv->qos_params[1], 0x0002, 0x0007, 0x000f, 94);
	FUNC0(priv->qos_params[2], 0x0003, 0x000f, 0x03ff, 0);
	FUNC0(priv->qos_params[3], 0x0007, 0x000f, 0x03ff, 0);
	err = FUNC5(priv);
	if (err)
		goto out;

	FUNC1(priv->bssid);
	priv->mode = NL80211_IFTYPE_MONITOR;
	err = FUNC7(priv);
	if (err) {
		priv->mode = NL80211_IFTYPE_UNSPECIFIED;
		goto out;
	}

	FUNC2(dev, &priv->work, 0);

	priv->softled_state = 0;
	err = FUNC6(priv);

out:
	FUNC4(&priv->conf_mutex);
	return err;
}