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
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct TYPE_4__ {int slaves; } ;
struct cpsw_common {TYPE_1__* slaves; TYPE_2__ data; int /*<<< orphan*/  dma; scalar_t__ usage_count; } ;
struct TYPE_3__ {struct net_device* ndev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct cpsw_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpsw_common*) ; 
 struct cpsw_priv* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	struct cpsw_priv *priv = FUNC3(ndev);
	struct cpsw_common *cpsw = priv->cpsw;
	int i, ret;

	/* After this receive is started */
	if (cpsw->usage_count) {
		ret = FUNC1(priv);
		if (ret)
			return ret;

		FUNC0(cpsw->dma);
		FUNC2(cpsw);
	}

	/* Resume transmit for every affected interface */
	for (i = 0; i < cpsw->data.slaves; i++) {
		ndev = cpsw->slaves[i].ndev;
		if (ndev && FUNC4(ndev))
			FUNC5(ndev);
	}

	return 0;
}