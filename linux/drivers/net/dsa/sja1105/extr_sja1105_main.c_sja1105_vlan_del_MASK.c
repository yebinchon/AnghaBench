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
typedef  scalar_t__ u16 ;
struct switchdev_obj_port_vlan {scalar_t__ vid_begin; scalar_t__ vid_end; int flags; } ;
struct sja1105_private {int dummy; } ;
struct dsa_switch {int /*<<< orphan*/  dev; struct sja1105_private* priv; } ;

/* Variables and functions */
 int BRIDGE_VLAN_INFO_UNTAGGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,int,int) ; 
 int FUNC1 (struct sja1105_private*,int,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC2(struct dsa_switch *ds, int port,
			    const struct switchdev_obj_port_vlan *vlan)
{
	struct sja1105_private *priv = ds->priv;
	u16 vid;
	int rc;

	for (vid = vlan->vid_begin; vid <= vlan->vid_end; vid++) {
		rc = FUNC1(priv, port, vid, false, vlan->flags &
					BRIDGE_VLAN_INFO_UNTAGGED);
		if (rc < 0) {
			FUNC0(ds->dev, "Failed to remove VLAN %d from port %d: %d\n",
				vid, port, rc);
			return rc;
		}
	}
	return 0;
}