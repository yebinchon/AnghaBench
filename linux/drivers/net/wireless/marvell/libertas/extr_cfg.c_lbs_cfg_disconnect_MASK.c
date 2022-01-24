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
typedef  int /*<<< orphan*/  u16 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct lbs_private {int /*<<< orphan*/  disassoc_reason; struct net_device* mesh_dev; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct lbs_private*,int /*<<< orphan*/ ) ; 
 struct lbs_private* FUNC1 (struct wiphy*) ; 

__attribute__((used)) static int FUNC2(struct wiphy *wiphy, struct net_device *dev,
	u16 reason_code)
{
	struct lbs_private *priv = FUNC1(wiphy);

	if (dev == priv->mesh_dev)
		return -EOPNOTSUPP;

	/* store for lbs_cfg_ret_disconnect() */
	priv->disassoc_reason = reason_code;

	return FUNC0(priv, reason_code);
}