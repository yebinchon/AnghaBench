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
struct hip04_priv {int reg_inten; scalar_t__ base; } ;

/* Variables and functions */
 int DEF_INT_MASK ; 
 scalar_t__ GE_PORT_EN ; 
 int GE_RX_PORT_EN ; 
 int GE_TX_PORT_EN ; 
 scalar_t__ PPE_INTEN ; 
 struct hip04_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev)
{
	struct hip04_priv *priv = FUNC0(ndev);
	u32 val;

	/* disable int */
	priv->reg_inten &= ~(DEF_INT_MASK);
	FUNC2(priv->reg_inten, priv->base + PPE_INTEN);

	/* disable tx & rx */
	val = FUNC1(priv->base + GE_PORT_EN);
	val &= ~(GE_RX_PORT_EN | GE_TX_PORT_EN);
	FUNC2(val, priv->base + GE_PORT_EN);
}