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
typedef  void* u64 ;
struct nfp_alink_xstats {int dummy; } ;
struct nfp_alink_stats {void* backlog_bytes; void* backlog_pkts; } ;
struct nfp_abm_link {TYPE_2__* abm; } ;
struct TYPE_4__ {TYPE_1__* app; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpp; } ;

/* Variables and functions */
 int FUNC0 (struct nfp_abm_link*,unsigned int,unsigned int,struct nfp_alink_stats*) ; 
 int FUNC1 (struct nfp_abm_link*,unsigned int,unsigned int,struct nfp_alink_xstats*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static int
FUNC3(struct nfp_abm_link *alink, unsigned int band,
		     unsigned int queue, struct nfp_alink_stats *prev_stats,
		     struct nfp_alink_xstats *prev_xstats)
{
	u64 backlog_pkts, backlog_bytes;
	int err;

	/* Don't touch the backlog, backlog can only be reset after it has
	 * been reported back to the tc qdisc stats.
	 */
	backlog_pkts = prev_stats->backlog_pkts;
	backlog_bytes = prev_stats->backlog_bytes;

	err = FUNC0(alink, band, queue, prev_stats);
	if (err) {
		FUNC2(alink->abm->app->cpp,
			"RED stats init (%d, %d) failed with error %d\n",
			band, queue, err);
		return err;
	}

	err = FUNC1(alink, band, queue, prev_xstats);
	if (err) {
		FUNC2(alink->abm->app->cpp,
			"RED xstats init (%d, %d) failed with error %d\n",
			band, queue, err);
		return err;
	}

	prev_stats->backlog_pkts = backlog_pkts;
	prev_stats->backlog_bytes = backlog_bytes;
	return 0;
}