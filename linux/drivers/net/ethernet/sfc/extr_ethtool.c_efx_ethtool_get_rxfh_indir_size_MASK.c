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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_indir_table; } ;
struct efx_nic {int n_rx_channels; TYPE_1__ rss_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct efx_nic* FUNC1 (struct net_device*) ; 

__attribute__((used)) static u32 FUNC2(struct net_device *net_dev)
{
	struct efx_nic *efx = FUNC1(net_dev);

	if (efx->n_rx_channels == 1)
		return 0;
	return FUNC0(efx->rss_context.rx_indir_table);
}