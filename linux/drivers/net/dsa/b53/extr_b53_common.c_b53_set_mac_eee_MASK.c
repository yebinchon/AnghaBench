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
struct ethtool_eee {int /*<<< orphan*/  eee_enabled; } ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {TYPE_1__* ports; } ;
struct TYPE_2__ {struct ethtool_eee eee; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct dsa_switch*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct b53_device*) ; 
 scalar_t__ FUNC2 (struct b53_device*) ; 

int FUNC3(struct dsa_switch *ds, int port, struct ethtool_eee *e)
{
	struct b53_device *dev = ds->priv;
	struct ethtool_eee *p = &dev->ports[port].eee;

	if (FUNC1(dev) || FUNC2(dev))
		return -EOPNOTSUPP;

	p->eee_enabled = e->eee_enabled;
	FUNC0(ds, port, e->eee_enabled);

	return 0;
}