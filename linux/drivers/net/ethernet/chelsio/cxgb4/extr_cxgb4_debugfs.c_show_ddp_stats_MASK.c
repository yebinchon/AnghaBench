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
struct tp_usm_stats {int /*<<< orphan*/  drops; int /*<<< orphan*/  octets; int /*<<< orphan*/  frames; } ;
struct seq_file {struct adapter* private; } ;
struct adapter {int /*<<< orphan*/  stats_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct tp_usm_stats*,int) ; 

__attribute__((used)) static void FUNC4(struct seq_file *seq)
{
	struct adapter *adap = seq->private;
	struct tp_usm_stats stats;

	FUNC1(&adap->stats_lock);
	FUNC3(adap, &stats, false);
	FUNC2(&adap->stats_lock);

	FUNC0("usm_ddp_frames:", stats.frames);
	FUNC0("usm_ddp_octets:", stats.octets);
	FUNC0("usm_ddp_drops:", stats.drops);
}