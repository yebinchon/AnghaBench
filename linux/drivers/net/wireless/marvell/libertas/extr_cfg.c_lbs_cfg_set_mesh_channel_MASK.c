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
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct lbs_private {struct net_device* mesh_dev; } ;
struct ieee80211_channel {int /*<<< orphan*/  hw_value; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 int FUNC0 (struct lbs_private*,int /*<<< orphan*/ ) ; 
 struct lbs_private* FUNC1 (struct wiphy*) ; 

__attribute__((used)) static int FUNC2(struct wiphy *wiphy,
				    struct net_device *netdev,
				    struct ieee80211_channel *channel)
{
	struct lbs_private *priv = FUNC1(wiphy);
	int ret = -ENOTSUPP;

	if (netdev != priv->mesh_dev)
		goto out;

	ret = FUNC0(priv, channel->hw_value);

 out:
	return ret;
}