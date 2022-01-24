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
struct net_device {scalar_t__ phydev; int /*<<< orphan*/  dev_addr; } ;
struct hisi_femac_priv {scalar_t__ glb_base; scalar_t__ link_status; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int DEF_INT_MASK ; 
 scalar_t__ GLB_IRQ_RAW ; 
 int IRQ_ENA_ALL ; 
 int IRQ_ENA_PORT0 ; 
 int /*<<< orphan*/  IRQ_ENA_PORT0_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_femac_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_femac_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_femac_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_femac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct hisi_femac_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct hisi_femac_priv *priv = FUNC5(dev);

	FUNC1(priv);
	FUNC3(priv, dev->dev_addr);
	FUNC2(priv);

	FUNC7(dev);
	FUNC6(dev);
	FUNC8(dev);
	FUNC4(&priv->napi);

	priv->link_status = 0;
	if (dev->phydev)
		FUNC9(dev->phydev);

	FUNC10(IRQ_ENA_PORT0_MASK, priv->glb_base + GLB_IRQ_RAW);
	FUNC0(priv, IRQ_ENA_ALL | IRQ_ENA_PORT0 | DEF_INT_MASK);

	return 0;
}