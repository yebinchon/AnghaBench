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
struct tp_err_stats {int /*<<< orphan*/  ofld_cong_defer; int /*<<< orphan*/  ofld_no_neigh; } ;
struct seq_file {struct adapter* private; } ;
struct adapter {int /*<<< orphan*/  stats_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct tp_err_stats*,int) ; 

__attribute__((used)) static void FUNC4(struct seq_file *seq)
{
	struct adapter *adap = seq->private;
	struct tp_err_stats stats;

	FUNC1(&adap->stats_lock);
	FUNC3(adap, &stats, false);
	FUNC2(&adap->stats_lock);

	FUNC0("tp_err_ofld_no_neigh:", stats.ofld_no_neigh);
	FUNC0("tp_err_ofld_cong_defer:", stats.ofld_cong_defer);
}