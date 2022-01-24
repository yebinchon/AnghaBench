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
struct net_device {int dummy; } ;
struct hisi_femac_priv {int /*<<< orphan*/  napi; scalar_t__ glb_base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DEF_INT_MASK ; 
 scalar_t__ GLB_IRQ_RAW ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_femac_priv*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hisi_femac_priv* FUNC3 (struct net_device*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	int ints;
	struct net_device *dev = (struct net_device *)dev_id;
	struct hisi_femac_priv *priv = FUNC3(dev);

	ints = FUNC4(priv->glb_base + GLB_IRQ_RAW);

	if (FUNC1(ints & DEF_INT_MASK)) {
		FUNC5(ints & DEF_INT_MASK,
		       priv->glb_base + GLB_IRQ_RAW);
		FUNC0(priv, DEF_INT_MASK);
		FUNC2(&priv->napi);
	}

	return IRQ_HANDLED;
}