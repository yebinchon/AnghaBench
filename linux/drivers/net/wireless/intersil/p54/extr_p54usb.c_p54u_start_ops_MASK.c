#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ fw_interface; struct ieee80211_hw* hw; } ;
struct p54u_priv {int (* upload_fw ) (struct ieee80211_hw*) ;TYPE_1__* udev; TYPE_2__ common; int /*<<< orphan*/  fw; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {scalar_t__ intf; int /*<<< orphan*/  hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct p54u_priv*) ; 
 int FUNC2 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ieee80211_hw*) ; 
 int FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ *) ; 
 TYPE_3__* p54u_fwlist ; 
 int FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*) ; 
 int FUNC7 (struct ieee80211_hw*) ; 

__attribute__((used)) static int FUNC8(struct p54u_priv *priv)
{
	struct ieee80211_hw *dev = priv->common.hw;
	int ret;

	ret = FUNC2(dev, priv->fw);
	if (ret)
		goto err_out;

	ret = FUNC1(priv);
	if (ret < 0)
		goto err_out;

	if (priv->common.fw_interface != p54u_fwlist[ret].intf) {
		FUNC0(&priv->udev->dev, "wrong firmware, please get "
			"a firmware for \"%s\" and try again.\n",
			p54u_fwlist[ret].hw);
		ret = -ENODEV;
		goto err_out;
	}

	ret = priv->upload_fw(dev);
	if (ret)
		goto err_out;

	ret = FUNC5(dev);
	if (ret)
		goto err_out;

	ret = FUNC3(dev);
	if (ret)
		goto err_stop;

	FUNC6(dev);

	ret = FUNC4(dev, &priv->udev->dev);
	if (ret)
		goto err_stop;

	return 0;

err_stop:
	FUNC6(dev);

err_out:
	/*
	 * p54u_disconnect will do the rest of the
	 * cleanup
	 */
	return ret;
}