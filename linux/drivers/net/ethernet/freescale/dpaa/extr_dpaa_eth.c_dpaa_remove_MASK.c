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
struct TYPE_5__ {struct device* parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  cgrid; } ;
struct TYPE_4__ {TYPE_3__ cgr; } ;
struct dpaa_priv {TYPE_1__ cgr_data; TYPE_3__ ingress_cgr; int /*<<< orphan*/  dpaa_fq_list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct net_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 struct dpaa_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct net_device *net_dev;
	struct dpaa_priv *priv;
	struct device *dev;
	int err;

	dev = pdev->dev.parent;
	net_dev = FUNC0(dev);

	priv = FUNC7(net_dev);

	FUNC3(dev);

	FUNC1(dev, NULL);
	FUNC10(net_dev);

	err = FUNC4(dev, &priv->dpaa_fq_list);

	FUNC8(&priv->ingress_cgr);
	FUNC9(priv->ingress_cgr.cgrid);
	FUNC8(&priv->cgr_data.cgr);
	FUNC9(priv->cgr_data.cgr.cgrid);

	FUNC5(net_dev);

	FUNC2(priv);

	FUNC6(net_dev);

	return err;
}