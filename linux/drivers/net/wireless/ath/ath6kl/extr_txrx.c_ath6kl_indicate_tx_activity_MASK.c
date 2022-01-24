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
typedef  size_t u8 ;
struct ath6kl {int* ac2ep_map; int* ac_stream_active; scalar_t__* ac_stream_pri_map; scalar_t__ hiac_stream_active_pri; int /*<<< orphan*/  htc_target; int /*<<< orphan*/  lock; int /*<<< orphan*/  flag; } ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_ENABLED ; 
 int WMM_NUM_AC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(void *devt, u8 traffic_class, bool active)
{
	struct ath6kl *ar = devt;
	enum htc_endpoint_id eid;
	int i;

	eid = ar->ac2ep_map[traffic_class];

	if (!FUNC3(WMI_ENABLED, &ar->flag))
		goto notify_htc;

	FUNC1(&ar->lock);

	ar->ac_stream_active[traffic_class] = active;

	if (active) {
		/*
		 * Keep track of the active stream with the highest
		 * priority.
		 */
		if (ar->ac_stream_pri_map[traffic_class] >
		    ar->hiac_stream_active_pri)
			/* set the new highest active priority */
			ar->hiac_stream_active_pri =
					ar->ac_stream_pri_map[traffic_class];

	} else {
		/*
		 * We may have to search for the next active stream
		 * that is the highest priority.
		 */
		if (ar->hiac_stream_active_pri ==
			ar->ac_stream_pri_map[traffic_class]) {
			/*
			 * The highest priority stream just went inactive
			 * reset and search for the "next" highest "active"
			 * priority stream.
			 */
			ar->hiac_stream_active_pri = 0;

			for (i = 0; i < WMM_NUM_AC; i++) {
				if (ar->ac_stream_active[i] &&
				    (ar->ac_stream_pri_map[i] >
				     ar->hiac_stream_active_pri))
					/*
					 * Set the new highest active
					 * priority.
					 */
					ar->hiac_stream_active_pri =
						ar->ac_stream_pri_map[i];
			}
		}
	}

	FUNC2(&ar->lock);

notify_htc:
	/* notify HTC, this may cause credit distribution changes */
	FUNC0(ar->htc_target, eid, active);
}