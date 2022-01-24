#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ice_vsi {struct ice_port_info* port_info; int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int link_info; } ;
struct TYPE_4__ {TYPE_1__ link_info; } ;
struct ice_port_info {TYPE_2__ phy; } ;
struct ice_pf {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ICE_AQ_MEDIA_AVAILABLE ; 
 int /*<<< orphan*/  ICE_FLAG_NO_MEDIA ; 
 int /*<<< orphan*/  __ICE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ice_vsi*,int) ; 
 struct ice_vsi* FUNC2 (struct ice_pf*) ; 
 int FUNC3 (struct ice_port_info*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct ice_pf *pf)
{
	struct ice_port_info *pi;
	struct ice_vsi *vsi;
	int err;

	vsi = FUNC2(pf);
	if (!vsi)
		return;

	/* No need to check for media if it's already present or the interface
	 * is down
	 */
	if (!FUNC4(ICE_FLAG_NO_MEDIA, pf->flags) ||
	    FUNC4(__ICE_DOWN, vsi->state))
		return;

	/* Refresh link info and check if media is present */
	pi = vsi->port_info;
	err = FUNC3(pi);
	if (err)
		return;

	if (pi->phy.link_info.link_info & ICE_AQ_MEDIA_AVAILABLE) {
		err = FUNC1(vsi, true);
		if (err)
			return;
		FUNC0(ICE_FLAG_NO_MEDIA, pf->flags);

		/* A Link Status Event will be generated; the event handler
		 * will complete bringing the interface up
		 */
	}
}