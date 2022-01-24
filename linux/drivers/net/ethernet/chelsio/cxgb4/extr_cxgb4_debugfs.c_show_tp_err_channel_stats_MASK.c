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
typedef  int /*<<< orphan*/  u8 ;
struct tp_err_stats {int dummy; } ;
struct seq_file {struct adapter* private; } ;
struct adapter {int /*<<< orphan*/  stats_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hdr_in_errs ; 
 int /*<<< orphan*/  mac_in_errs ; 
 int /*<<< orphan*/  ofld_chan_drops ; 
 int /*<<< orphan*/  ofld_vlan_drops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct tp_err_stats*,int) ; 
 int /*<<< orphan*/  tcp6_in_errs ; 
 int /*<<< orphan*/  tcp_in_errs ; 
 int /*<<< orphan*/  tnl_cong_drops ; 
 int /*<<< orphan*/  tnl_tx_drops ; 

__attribute__((used)) static void FUNC4(struct seq_file *seq)
{
	struct adapter *adap = seq->private;
	struct tp_err_stats stats;
	u8 i;

	FUNC1(&adap->stats_lock);
	FUNC3(adap, &stats, false);
	FUNC2(&adap->stats_lock);

	FUNC0("tp_mac_in_errs:", mac_in_errs);
	FUNC0("tp_hdr_in_errs:", hdr_in_errs);
	FUNC0("tp_tcp_in_errs:", tcp_in_errs);
	FUNC0("tp_tcp6_in_errs:", tcp6_in_errs);
	FUNC0("tp_tnl_cong_drops:", tnl_cong_drops);
	FUNC0("tp_tnl_tx_drops:", tnl_tx_drops);
	FUNC0("tp_ofld_vlan_drops:", ofld_vlan_drops);
	FUNC0("tp_ofld_chan_drops:", ofld_chan_drops);
}