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
struct nfp_flower_priv {int flower_ext_feats; } ;
struct nfp_app {struct nfp_flower_priv* priv; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int NFP_FL_FEATS_LAG ; 
 int NOTIFY_STOP_MASK ; 
 int FUNC0 (struct nfp_app*,struct net_device*,unsigned long) ; 
 int FUNC1 (struct nfp_flower_priv*,struct net_device*,unsigned long,void*) ; 
 int FUNC2 (struct nfp_app*,struct net_device*,unsigned long) ; 
 int FUNC3 (struct nfp_app*,struct net_device*,unsigned long,void*) ; 

__attribute__((used)) static int
FUNC4(struct nfp_app *app, struct net_device *netdev,
			unsigned long event, void *ptr)
{
	struct nfp_flower_priv *app_priv = app->priv;
	int ret;

	if (app_priv->flower_ext_feats & NFP_FL_FEATS_LAG) {
		ret = FUNC1(app_priv, netdev, event, ptr);
		if (ret & NOTIFY_STOP_MASK)
			return ret;
	}

	ret = FUNC2(app, netdev, event);
	if (ret & NOTIFY_STOP_MASK)
		return ret;

	ret = FUNC0(app, netdev, event);
	if (ret & NOTIFY_STOP_MASK)
		return ret;

	return FUNC3(app, netdev, event, ptr);
}