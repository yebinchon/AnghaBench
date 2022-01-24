#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {TYPE_3__* ethtool_ops; } ;
struct ethtool_wolinfo {int wolopts; int /*<<< orphan*/  sopass; int /*<<< orphan*/  supported; } ;
struct dsa_switch {TYPE_2__* ports; } ;
struct bcm_sf2_priv {int wol_ports_mask; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_wol ) (struct net_device*,struct ethtool_wolinfo*) ;} ;
struct TYPE_5__ {TYPE_1__* cpu_dp; } ;
struct TYPE_4__ {struct net_device* master; } ;

/* Variables and functions */
 int WAKE_MAGICSECURE ; 
 struct bcm_sf2_priv* FUNC0 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,struct ethtool_wolinfo*) ; 

__attribute__((used)) static void FUNC4(struct dsa_switch *ds, int port,
			       struct ethtool_wolinfo *wol)
{
	struct net_device *p = ds->ports[port].cpu_dp->master;
	struct bcm_sf2_priv *priv = FUNC0(ds);
	struct ethtool_wolinfo pwol = { };

	/* Get the parent device WoL settings */
	if (p->ethtool_ops->get_wol)
		p->ethtool_ops->get_wol(p, &pwol);

	/* Advertise the parent device supported settings */
	wol->supported = pwol.supported;
	FUNC2(&wol->sopass, 0, sizeof(wol->sopass));

	if (pwol.wolopts & WAKE_MAGICSECURE)
		FUNC1(&wol->sopass, pwol.sopass, sizeof(wol->sopass));

	if (priv->wol_ports_mask & (1 << port))
		wol->wolopts = pwol.wolopts;
	else
		wol->wolopts = 0;
}