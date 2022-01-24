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
struct dsa_switch {int vlan_filtering_is_global; int /*<<< orphan*/  dev; struct b53_device* priv; } ;
struct b53_device {unsigned int num_ports; } ;

/* Variables and functions */
 int FUNC0 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsa_switch*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct b53_device*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct b53_device*) ; 
 int FUNC4 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (struct dsa_switch*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct dsa_switch *ds)
{
	struct b53_device *dev = ds->priv;
	unsigned int port;
	int ret;

	ret = FUNC4(dev);
	if (ret) {
		FUNC5(ds->dev, "failed to reset switch\n");
		return ret;
	}

	FUNC3(dev);

	ret = FUNC0(dev);
	if (ret)
		FUNC5(ds->dev, "failed to apply configuration\n");

	/* Configure IMP/CPU port, disable all other ports. Enabled
	 * ports will be configured with .port_enable
	 */
	for (port = 0; port < dev->num_ports; port++) {
		if (FUNC6(ds, port))
			FUNC2(dev, port);
		else
			FUNC1(ds, port);
	}

	/* Let DSA handle the case were multiple bridges span the same switch
	 * device and different VLAN awareness settings are requested, which
	 * would be breaking filtering semantics for any of the other bridge
	 * devices. (not hardware supported)
	 */
	ds->vlan_filtering_is_global = true;

	return ret;
}