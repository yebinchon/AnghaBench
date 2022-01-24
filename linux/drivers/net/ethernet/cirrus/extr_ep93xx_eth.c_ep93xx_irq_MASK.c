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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct ep93xx_priv {int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  REG_INTEN ; 
 int /*<<< orphan*/  REG_INTEN_TX ; 
 int /*<<< orphan*/  REG_INTSTSC ; 
 int REG_INTSTS_RX ; 
 int REG_INTSTS_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ep93xx_priv* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct ep93xx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ep93xx_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct ep93xx_priv *ep = FUNC4(dev);
	u32 status;

	status = FUNC5(ep, REG_INTSTSC);
	if (status == 0)
		return IRQ_NONE;

	if (status & REG_INTSTS_RX) {
		FUNC6(&ep->rx_lock);
		if (FUNC2(FUNC3(&ep->napi))) {
			FUNC8(ep, REG_INTEN, REG_INTEN_TX);
			FUNC0(&ep->napi);
		}
		FUNC7(&ep->rx_lock);
	}

	if (status & REG_INTSTS_TX)
		FUNC1(dev);

	return IRQ_HANDLED;
}