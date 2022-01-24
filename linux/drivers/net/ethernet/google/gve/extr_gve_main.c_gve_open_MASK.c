#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_queues; } ;
struct TYPE_3__ {int /*<<< orphan*/  num_queues; } ;
struct gve_priv {TYPE_2__ rx_cfg; TYPE_1__ tx_cfg; } ;

/* Variables and functions */
 int FUNC0 (struct gve_priv*) ; 
 int FUNC1 (struct gve_priv*) ; 
 int FUNC2 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct gve_priv*) ; 
 scalar_t__ FUNC5 (struct gve_priv*) ; 
 int FUNC6 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gve_priv*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct gve_priv*) ; 
 struct gve_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int FUNC13 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev)
{
	struct gve_priv *priv = FUNC11(dev);
	int err;

	err = FUNC0(priv);
	if (err)
		return err;
	err = FUNC1(priv);
	if (err)
		goto free_qpls;

	err = FUNC14(dev, priv->tx_cfg.num_queues);
	if (err)
		goto free_rings;
	err = FUNC13(dev, priv->rx_cfg.num_queues);
	if (err)
		goto free_rings;

	err = FUNC6(priv);
	if (err)
		goto reset;
	err = FUNC2(priv);
	if (err)
		goto reset;
	FUNC9(priv);

	FUNC10(priv);
	FUNC12(dev);
	return 0;

free_rings:
	FUNC4(priv);
free_qpls:
	FUNC3(priv);
	return err;

reset:
	/* This must have been called from a reset due to the rtnl lock
	 * so just return at this point.
	 */
	if (FUNC5(priv))
		return err;
	/* Otherwise reset before returning */
	FUNC7(priv, true);
	/* if this fails there is nothing we can do so just ignore the return */
	FUNC8(priv, false);
	/* return the original error */
	return err;
}