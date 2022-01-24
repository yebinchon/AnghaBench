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
struct platform_device {int dummy; } ;
struct b53_srab_priv {struct b53_srab_port_priv* port_intrs; scalar_t__ regs; } ;
struct b53_srab_port_priv {unsigned int num; int /*<<< orphan*/  irq; struct b53_device* dev; } ;
struct b53_device {struct b53_srab_priv* priv; } ;

/* Variables and functions */
 unsigned int B53_N_PORTS ; 
 scalar_t__ B53_SRAB_INTR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct b53_srab_priv*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct b53_device* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct platform_device *pdev)
{
	struct b53_device *dev = FUNC3(pdev);
	struct b53_srab_priv *priv = dev->priv;
	struct b53_srab_port_priv *port;
	unsigned int i;
	char *name;

	/* Clear all pending interrupts */
	FUNC5(0xffffffff, priv->regs + B53_SRAB_INTR);

	for (i = 0; i < B53_N_PORTS; i++) {
		port = &priv->port_intrs[i];

		/* There is no port 6 */
		if (i == 6)
			continue;

		name = FUNC1(GFP_KERNEL, "link_state_p%d", i);
		if (!name)
			return;

		port->num = i;
		port->dev = dev;
		port->irq = FUNC4(pdev, name);
		FUNC2(name);
	}

	FUNC0(priv, true);
}