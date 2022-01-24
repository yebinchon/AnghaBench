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
struct net_device {int dummy; } ;
struct cpsw_priv {TYPE_1__* cpsw; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpsw_priv*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  drv ; 
 struct cpsw_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct net_device *ndev)
{
	struct cpsw_priv *priv = FUNC1(ndev);
	int ret;

	ret = FUNC2(priv->cpsw->dev);
	if (ret < 0)
		FUNC0(priv, drv, "ethtool complete failed %d\n", ret);
}