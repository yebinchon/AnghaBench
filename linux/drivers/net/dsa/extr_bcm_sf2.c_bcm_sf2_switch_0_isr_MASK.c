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
struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {int irq0_stat; int irq0_mask; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  INTRL2_CPU_CLEAR ; 
 int /*<<< orphan*/  INTRL2_CPU_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 struct bcm_sf2_priv* FUNC0 (struct dsa_switch*) ; 
 int FUNC1 (struct bcm_sf2_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_sf2_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct dsa_switch *ds = dev_id;
	struct bcm_sf2_priv *priv = FUNC0(ds);

	priv->irq0_stat = FUNC1(priv, INTRL2_CPU_STATUS) &
				~priv->irq0_mask;
	FUNC2(priv, priv->irq0_stat, INTRL2_CPU_CLEAR);

	return IRQ_HANDLED;
}