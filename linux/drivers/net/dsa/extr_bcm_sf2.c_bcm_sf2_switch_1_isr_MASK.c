#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {int irq1_stat; int irq1_mask; TYPE_1__* port_sts; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int link; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTRL2_CPU_CLEAR ; 
 int /*<<< orphan*/  INTRL2_CPU_STATUS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  P7_IRQ_OFF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct bcm_sf2_priv* FUNC2 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC3 (struct dsa_switch*,int,int) ; 
 int FUNC4 (struct bcm_sf2_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_sf2_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct dsa_switch *ds = dev_id;
	struct bcm_sf2_priv *priv = FUNC2(ds);

	priv->irq1_stat = FUNC4(priv, INTRL2_CPU_STATUS) &
				~priv->irq1_mask;
	FUNC5(priv, priv->irq1_stat, INTRL2_CPU_CLEAR);

	if (priv->irq1_stat & FUNC1(P7_IRQ_OFF)) {
		priv->port_sts[7].link = true;
		FUNC3(ds, 7, true);
	}
	if (priv->irq1_stat & FUNC0(P7_IRQ_OFF)) {
		priv->port_sts[7].link = false;
		FUNC3(ds, 7, false);
	}

	return IRQ_HANDLED;
}