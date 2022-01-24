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
struct ravb_private {int /*<<< orphan*/  emac_irq; int /*<<< orphan*/ * napi; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECMR ; 
 int /*<<< orphan*/  ECMR_MPDE ; 
 size_t RAVB_BE ; 
 size_t RAVB_NC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ravb_private* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev)
{
	struct ravb_private *priv = FUNC2(ndev);
	int ret;

	FUNC1(&priv->napi[RAVB_NC]);
	FUNC1(&priv->napi[RAVB_BE]);

	/* Disable MagicPacket */
	FUNC4(ndev, ECMR, ECMR_MPDE, 0);

	ret = FUNC3(ndev);
	if (ret < 0)
		return ret;

	return FUNC0(priv->emac_irq);
}