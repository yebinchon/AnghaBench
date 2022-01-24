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
struct ice_vsi {int num_rxq; } ;

/* Variables and functions */
 int FUNC0 (struct ice_vsi*,int,int) ; 

__attribute__((used)) static int FUNC1(struct ice_vsi *vsi, bool ena)
{
	int i, ret = 0;

	for (i = 0; i < vsi->num_rxq; i++) {
		ret = FUNC0(vsi, ena, i);
		if (ret)
			break;
	}

	return ret;
}