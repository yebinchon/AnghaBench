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
struct net_device {int dummy; } ;
struct cc770_priv {int cpu_interface; int control_normal_mode; int /*<<< orphan*/  reg_base; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int CPUIF_RST ; 
 int CTRL_CCE ; 
 int CTRL_EAF ; 
 int CTRL_INI ; 
 int ENODEV ; 
 int FUNC0 (struct cc770_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cc770_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  cpu_interface ; 
 TYPE_1__* msgobj ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct cc770_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct cc770_priv *priv = FUNC3(dev);

	/* Enable configuration, put chip in bus-off, disable ints */
	FUNC1(priv, control, CTRL_CCE | CTRL_EAF | CTRL_INI);
	/* Configure cpu interface / CLKOUT disable */
	FUNC1(priv, cpu_interface, priv->cpu_interface);

	/*
	 * Check if hardware reset is still inactive or maybe there
	 * is no chip in this address space
	 */
	if (FUNC0(priv, cpu_interface) & CPUIF_RST) {
		FUNC2(dev, "probing @0x%p failed (reset)\n",
			    priv->reg_base);
		return -ENODEV;
	}

	/* Write and read back test pattern (some arbitrary values) */
	FUNC1(priv, msgobj[1].data[1], 0x25);
	FUNC1(priv, msgobj[2].data[3], 0x52);
	FUNC1(priv, msgobj[10].data[6], 0xc3);
	if ((FUNC0(priv, msgobj[1].data[1]) != 0x25) ||
	    (FUNC0(priv, msgobj[2].data[3]) != 0x52) ||
	    (FUNC0(priv, msgobj[10].data[6]) != 0xc3)) {
		FUNC2(dev, "probing @0x%p failed (pattern)\n",
			    priv->reg_base);
		return -ENODEV;
	}

	/* Check if this chip is a CC770 supporting additional functions */
	if (FUNC0(priv, control) & CTRL_EAF)
		priv->control_normal_mode |= CTRL_EAF;

	return 0;
}