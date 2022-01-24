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
typedef  int /*<<< orphan*/  u32 ;
struct dsa_switch {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  gphy_rev; } ;
struct bcm_sf2_priv {TYPE_1__ hw_params; } ;

/* Variables and functions */
 struct bcm_sf2_priv* FUNC0 (struct dsa_switch*) ; 

__attribute__((used)) static u32 FUNC1(struct dsa_switch *ds, int port)
{
	struct bcm_sf2_priv *priv = FUNC0(ds);

	/* The BCM7xxx PHY driver expects to find the integrated PHY revision
	 * in bits 15:8 and the patch level in bits 7:0 which is exactly what
	 * the REG_PHY_REVISION register layout is.
	 */

	return priv->hw_params.gphy_rev;
}