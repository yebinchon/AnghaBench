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
struct net_device {int /*<<< orphan*/  name; } ;
struct cpmac_priv {scalar_t__ regs; } ;

/* Variables and functions */
 int CPMAC_REG_END ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 struct cpmac_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	int i;
	struct cpmac_priv *priv = FUNC1(dev);

	for (i = 0; i < CPMAC_REG_END; i += 4) {
		if (i % 16 == 0) {
			if (i)
				FUNC2("\n");
			FUNC2("%s: reg[%p]:", dev->name, priv->regs + i);
		}
		FUNC2(" %08x", FUNC0(priv->regs, i));
	}
	FUNC2("\n");
}