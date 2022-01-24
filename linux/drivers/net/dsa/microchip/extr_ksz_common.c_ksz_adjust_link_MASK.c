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
struct phy_device {int /*<<< orphan*/  link; } ;
struct ksz_port {int read; } ;
struct ksz_device {int live_ports; int on_ports; int /*<<< orphan*/  dev_mutex; int /*<<< orphan*/  mib_read; struct ksz_port* ports; } ;
struct dsa_switch {struct ksz_device* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct dsa_switch *ds, int port,
		     struct phy_device *phydev)
{
	struct ksz_device *dev = ds->priv;
	struct ksz_port *p = &dev->ports[port];

	/* Read all MIB counters when the link is going down. */
	if (!phydev->link) {
		p->read = true;
		FUNC2(&dev->mib_read);
	}
	FUNC0(&dev->dev_mutex);
	if (!phydev->link)
		dev->live_ports &= ~(1 << port);
	else
		/* Remember which port is connected and active. */
		dev->live_ports |= (1 << port) & dev->on_ports;
	FUNC1(&dev->dev_mutex);
}