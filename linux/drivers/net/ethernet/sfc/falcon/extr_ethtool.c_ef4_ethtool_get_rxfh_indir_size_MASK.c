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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ef4_nic {int n_rx_channels; int /*<<< orphan*/  rx_indir_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ EF4_REV_FALCON_B0 ; 
 scalar_t__ FUNC1 (struct ef4_nic*) ; 
 struct ef4_nic* FUNC2 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC3(struct net_device *net_dev)
{
	struct ef4_nic *efx = FUNC2(net_dev);

	return ((FUNC1(efx) < EF4_REV_FALCON_B0 ||
		 efx->n_rx_channels == 1) ?
		0 : FUNC0(efx->rx_indir_table));
}