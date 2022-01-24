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
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; } ;
struct dsa_switch {int /*<<< orphan*/  vlan_filtering; struct b53_device* priv; } ;
struct b53_device {scalar_t__ num_vlans; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int ERANGE ; 
 int /*<<< orphan*/  FUNC0 (struct b53_device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct b53_device*) ; 
 scalar_t__ FUNC2 (struct b53_device*) ; 

int FUNC3(struct dsa_switch *ds, int port,
		     const struct switchdev_obj_port_vlan *vlan)
{
	struct b53_device *dev = ds->priv;

	if ((FUNC1(dev) || FUNC2(dev)) && vlan->vid_begin == 0)
		return -EOPNOTSUPP;

	if (vlan->vid_end > dev->num_vlans)
		return -ERANGE;

	FUNC0(dev, true, ds->vlan_filtering);

	return 0;
}