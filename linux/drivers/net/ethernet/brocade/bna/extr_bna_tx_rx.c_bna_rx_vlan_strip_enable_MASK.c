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
struct bna_rxf {scalar_t__ vlan_strip_status; int vlan_strip_pending; } ;
struct bna_rx {struct bna_rxf rxf; } ;

/* Variables and functions */
 scalar_t__ BNA_STATUS_T_DISABLED ; 
 scalar_t__ BNA_STATUS_T_ENABLED ; 
 int /*<<< orphan*/  RXF_E_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (struct bna_rxf*,int /*<<< orphan*/ ) ; 

void
FUNC1(struct bna_rx *rx)
{
	struct bna_rxf *rxf = &rx->rxf;

	if (rxf->vlan_strip_status == BNA_STATUS_T_DISABLED) {
		rxf->vlan_strip_status = BNA_STATUS_T_ENABLED;
		rxf->vlan_strip_pending = true;
		FUNC0(rxf, RXF_E_CONFIG);
	}
}