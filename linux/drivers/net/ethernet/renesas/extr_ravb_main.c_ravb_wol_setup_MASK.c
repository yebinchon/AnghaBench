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
 int /*<<< orphan*/  ECSIPR ; 
 int /*<<< orphan*/  ECSIPR_MPDIP ; 
 size_t RAVB_BE ; 
 size_t RAVB_NC ; 
 int /*<<< orphan*/  RIC0 ; 
 int /*<<< orphan*/  RIC2 ; 
 int /*<<< orphan*/  TIC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ravb_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev)
{
	struct ravb_private *priv = FUNC2(ndev);

	/* Disable interrupts by clearing the interrupt masks. */
	FUNC4(ndev, 0, RIC0);
	FUNC4(ndev, 0, RIC2);
	FUNC4(ndev, 0, TIC);

	/* Only allow ECI interrupts */
	FUNC5(priv->emac_irq);
	FUNC1(&priv->napi[RAVB_NC]);
	FUNC1(&priv->napi[RAVB_BE]);
	FUNC4(ndev, ECSIPR_MPDIP, ECSIPR);

	/* Enable MagicPacket */
	FUNC3(ndev, ECMR, ECMR_MPDE, ECMR_MPDE);

	return FUNC0(priv->emac_irq);
}