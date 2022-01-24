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
struct ice_vsi {int /*<<< orphan*/  vsi_num; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_NO_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_vsi*) ; 
 int FUNC2 (struct ice_vsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ice_vsi *vsi)
{
	int status;

	status = FUNC2(vsi, ICE_NO_RESET, 0);
	if (status)
		FUNC4(vsi->netdev, "Failed to stop Tx rings, VSI %d error %d\n",
			   vsi->vsi_num, status);

	status = FUNC3(vsi);
	if (status)
		FUNC4(vsi->netdev, "Failed to stop Rx rings, VSI %d error %d\n",
			   vsi->vsi_num, status);

	FUNC1(vsi);
	FUNC0(vsi);

	return status;
}