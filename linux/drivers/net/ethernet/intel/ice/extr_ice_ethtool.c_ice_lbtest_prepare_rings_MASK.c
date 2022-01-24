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
struct ice_vsi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ICE_NO_RESET ; 
 int FUNC0 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC1 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC2 (struct ice_vsi*) ; 
 int FUNC3 (struct ice_vsi*) ; 
 int FUNC4 (struct ice_vsi*) ; 
 int FUNC5 (struct ice_vsi*) ; 
 int /*<<< orphan*/  FUNC6 (struct ice_vsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ice_vsi *vsi)
{
	int status;

	status = FUNC4(vsi);
	if (status)
		goto err_setup_tx_ring;

	status = FUNC3(vsi);
	if (status)
		goto err_setup_rx_ring;

	status = FUNC0(vsi);
	if (status)
		goto err_setup_rx_ring;

	status = FUNC5(vsi);
	if (status)
		goto err_start_rx_ring;

	return status;

err_start_rx_ring:
	FUNC1(vsi);
err_setup_rx_ring:
	FUNC6(vsi, ICE_NO_RESET, 0);
err_setup_tx_ring:
	FUNC2(vsi);

	return status;
}