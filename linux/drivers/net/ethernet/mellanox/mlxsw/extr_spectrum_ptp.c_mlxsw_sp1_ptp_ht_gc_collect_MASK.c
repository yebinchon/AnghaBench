#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mlxsw_sp_ptp_state {TYPE_4__* mlxsw_sp; int /*<<< orphan*/  unmatched_lock; int /*<<< orphan*/  unmatched_ht; } ;
struct mlxsw_sp_ptp_port_dir_stats {int /*<<< orphan*/  timestamps; int /*<<< orphan*/  packets; } ;
struct TYPE_6__ {struct mlxsw_sp_ptp_port_dir_stats tx_gcd; struct mlxsw_sp_ptp_port_dir_stats rx_gcd; } ;
struct TYPE_7__ {TYPE_2__ stats; } ;
struct mlxsw_sp_port {TYPE_3__ ptp; } ;
struct TYPE_5__ {size_t local_port; scalar_t__ ingress; } ;
struct mlxsw_sp1_ptp_unmatched {scalar_t__ skb; TYPE_1__ key; int /*<<< orphan*/  ht_node; } ;
struct TYPE_8__ {struct mlxsw_sp_port** ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,struct mlxsw_sp1_ptp_unmatched*) ; 
 int /*<<< orphan*/  mlxsw_sp1_ptp_unmatched_ht_params ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct mlxsw_sp_ptp_state *ptp_state,
			    struct mlxsw_sp1_ptp_unmatched *unmatched)
{
	struct mlxsw_sp_ptp_port_dir_stats *stats;
	struct mlxsw_sp_port *mlxsw_sp_port;
	int err;

	/* If an unmatched entry has an SKB, it has to be handed over to the
	 * networking stack. This is usually done from a trap handler, which is
	 * invoked in a softirq context. Here we are going to do it in process
	 * context. If that were to be interrupted by a softirq, it could cause
	 * a deadlock when an attempt is made to take an already-taken lock
	 * somewhere along the sending path. Disable softirqs to prevent this.
	 */
	FUNC0();

	FUNC4(&ptp_state->unmatched_lock);
	err = FUNC3(&ptp_state->unmatched_ht, &unmatched->ht_node,
			      mlxsw_sp1_ptp_unmatched_ht_params);
	FUNC5(&ptp_state->unmatched_lock);

	if (err)
		/* The packet was matched with timestamp during the walk. */
		goto out;

	mlxsw_sp_port = ptp_state->mlxsw_sp->ports[unmatched->key.local_port];
	if (mlxsw_sp_port) {
		stats = unmatched->key.ingress ?
			&mlxsw_sp_port->ptp.stats.rx_gcd :
			&mlxsw_sp_port->ptp.stats.tx_gcd;
		if (unmatched->skb)
			stats->packets++;
		else
			stats->timestamps++;
	}

	/* mlxsw_sp1_ptp_unmatched_finish() invokes netif_receive_skb(). While
	 * the comment at that function states that it can only be called in
	 * soft IRQ context, this pattern of local_bh_disable() +
	 * netif_receive_skb(), in process context, is seen elsewhere in the
	 * kernel, notably in pktgen.
	 */
	FUNC2(ptp_state->mlxsw_sp, unmatched);

out:
	FUNC1();
}