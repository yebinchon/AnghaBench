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
struct tp_tcp_stats {int /*<<< orphan*/  tcp_retrans_segs; int /*<<< orphan*/  tcp_out_segs; int /*<<< orphan*/  tcp_in_segs; int /*<<< orphan*/  tcp_out_rsts; } ;
struct seq_file {struct adapter* private; } ;
struct adapter {int /*<<< orphan*/  stats_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct tp_tcp_stats*,struct tp_tcp_stats*,int) ; 

__attribute__((used)) static void FUNC4(struct seq_file *seq)
{
	struct adapter *adap = seq->private;
	struct tp_tcp_stats v4, v6;

	FUNC1(&adap->stats_lock);
	FUNC3(adap, &v4, &v6, false);
	FUNC2(&adap->stats_lock);

	FUNC0("tcp_ipv4_out_rsts:", v4.tcp_out_rsts);
	FUNC0("tcp_ipv4_in_segs:", v4.tcp_in_segs);
	FUNC0("tcp_ipv4_out_segs:", v4.tcp_out_segs);
	FUNC0("tcp_ipv4_retrans_segs:", v4.tcp_retrans_segs);
	FUNC0("tcp_ipv6_out_rsts:", v6.tcp_out_rsts);
	FUNC0("tcp_ipv6_in_segs:", v6.tcp_in_segs);
	FUNC0("tcp_ipv6_out_segs:", v6.tcp_out_segs);
	FUNC0("tcp_ipv6_retrans_segs:", v6.tcp_retrans_segs);
}