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
struct nps_enet_priv {int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  NPS_ENET_REG_BUF_INT_ENABLE ; 
 int /*<<< orphan*/  NPS_ENET_REG_RX_CTL ; 
 int RX_CTL_CR_MASK ; 
 int RX_CTL_CR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nps_enet_priv* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct nps_enet_priv*) ; 
 int FUNC5 (struct nps_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nps_enet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC7(s32 irq, void *dev_instance)
{
	struct net_device *ndev = dev_instance;
	struct nps_enet_priv *priv = FUNC3(ndev);
	u32 rx_ctrl_value = FUNC5(priv, NPS_ENET_REG_RX_CTL);
	u32 rx_ctrl_cr = (rx_ctrl_value & RX_CTL_CR_MASK) >> RX_CTL_CR_SHIFT;

	if (FUNC4(priv) || rx_ctrl_cr)
		if (FUNC1(FUNC2(&priv->napi))) {
			FUNC6(priv, NPS_ENET_REG_BUF_INT_ENABLE, 0);
			FUNC0(&priv->napi);
		}

	return IRQ_HANDLED;
}