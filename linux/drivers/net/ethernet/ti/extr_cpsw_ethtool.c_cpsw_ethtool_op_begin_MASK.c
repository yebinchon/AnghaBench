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
struct net_device {int dummy; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpsw_priv*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  drv ; 
 struct cpsw_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct net_device *ndev)
{
	struct cpsw_priv *priv = FUNC1(ndev);
	struct cpsw_common *cpsw = priv->cpsw;
	int ret;

	ret = FUNC2(cpsw->dev);
	if (ret < 0) {
		FUNC0(priv, drv, "ethtool begin failed %d\n", ret);
		FUNC3(cpsw->dev);
	}

	return ret;
}