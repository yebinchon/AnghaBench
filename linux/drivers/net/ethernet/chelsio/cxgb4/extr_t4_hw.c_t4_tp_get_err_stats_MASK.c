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
struct tp_err_stats {int /*<<< orphan*/  ofld_no_neigh; int /*<<< orphan*/ * tcp6_in_errs; int /*<<< orphan*/ * ofld_vlan_drops; int /*<<< orphan*/ * tnl_tx_drops; int /*<<< orphan*/ * ofld_chan_drops; int /*<<< orphan*/ * tnl_cong_drops; int /*<<< orphan*/ * tcp_in_errs; int /*<<< orphan*/ * hdr_in_errs; int /*<<< orphan*/ * mac_in_errs; } ;
struct TYPE_3__ {int nchan; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct adapter {TYPE_2__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  TP_MIB_HDR_IN_ERR_0_A ; 
 int /*<<< orphan*/  TP_MIB_MAC_IN_ERR_0_A ; 
 int /*<<< orphan*/  TP_MIB_OFD_ARP_DROP_A ; 
 int /*<<< orphan*/  TP_MIB_OFD_CHN_DROP_0_A ; 
 int /*<<< orphan*/  TP_MIB_OFD_VLN_DROP_0_A ; 
 int /*<<< orphan*/  TP_MIB_TCP_IN_ERR_0_A ; 
 int /*<<< orphan*/  TP_MIB_TCP_V6IN_ERR_0_A ; 
 int /*<<< orphan*/  TP_MIB_TNL_CNG_DROP_0_A ; 
 int /*<<< orphan*/  TP_MIB_TNL_DROP_0_A ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 

void FUNC1(struct adapter *adap, struct tp_err_stats *st,
			 bool sleep_ok)
{
	int nchan = adap->params.arch.nchan;

	FUNC0(adap, st->mac_in_errs, nchan, TP_MIB_MAC_IN_ERR_0_A,
		       sleep_ok);
	FUNC0(adap, st->hdr_in_errs, nchan, TP_MIB_HDR_IN_ERR_0_A,
		       sleep_ok);
	FUNC0(adap, st->tcp_in_errs, nchan, TP_MIB_TCP_IN_ERR_0_A,
		       sleep_ok);
	FUNC0(adap, st->tnl_cong_drops, nchan,
		       TP_MIB_TNL_CNG_DROP_0_A, sleep_ok);
	FUNC0(adap, st->ofld_chan_drops, nchan,
		       TP_MIB_OFD_CHN_DROP_0_A, sleep_ok);
	FUNC0(adap, st->tnl_tx_drops, nchan, TP_MIB_TNL_DROP_0_A,
		       sleep_ok);
	FUNC0(adap, st->ofld_vlan_drops, nchan,
		       TP_MIB_OFD_VLN_DROP_0_A, sleep_ok);
	FUNC0(adap, st->tcp6_in_errs, nchan,
		       TP_MIB_TCP_V6IN_ERR_0_A, sleep_ok);
	FUNC0(adap, &st->ofld_no_neigh, 2, TP_MIB_OFD_ARP_DROP_A,
		       sleep_ok);
}