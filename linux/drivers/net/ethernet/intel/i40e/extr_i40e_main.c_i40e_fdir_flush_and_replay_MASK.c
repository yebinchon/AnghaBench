#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int debug_mask; } ;
struct i40e_pf {unsigned long fd_flush_timestamp; int fdir_pf_filter_count; int fdir_pf_active_filters; size_t lan_vsi; TYPE_1__* pdev; TYPE_2__ hw; int /*<<< orphan*/  state; int /*<<< orphan*/  fd_tcp4_filter_cnt; int /*<<< orphan*/ * vsi; scalar_t__ fd_add_err; int /*<<< orphan*/  fd_flush_cnt; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long HZ ; 
 int I40E_DEBUG_FD ; 
 int I40E_FDIR_BUFFER_HEAD_ROOM_FOR_ATR ; 
 unsigned long I40E_MIN_FD_FLUSH_INTERVAL ; 
 unsigned long I40E_MIN_FD_FLUSH_SB_ATR_UNSTABLE ; 
 int /*<<< orphan*/  I40E_PFQF_CTL_1 ; 
 int I40E_PFQF_CTL_1_CLEARFDTABLE_MASK ; 
 int /*<<< orphan*/  __I40E_FD_ATR_AUTO_DISABLED ; 
 int /*<<< orphan*/  __I40E_FD_FLUSH_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 unsigned long jiffies ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct i40e_pf *pf)
{
	unsigned long min_flush_time;
	int flush_wait_retry = 50;
	bool disable_atr = false;
	int fd_room;
	int reg;

	if (!FUNC7(jiffies, pf->fd_flush_timestamp +
				 (I40E_MIN_FD_FLUSH_INTERVAL * HZ)))
		return;

	/* If the flush is happening too quick and we have mostly SB rules we
	 * should not re-enable ATR for some time.
	 */
	min_flush_time = pf->fd_flush_timestamp +
			 (I40E_MIN_FD_FLUSH_SB_ATR_UNSTABLE * HZ);
	fd_room = pf->fdir_pf_filter_count - pf->fdir_pf_active_filters;

	if (!(FUNC7(jiffies, min_flush_time)) &&
	    (fd_room < I40E_FDIR_BUFFER_HEAD_ROOM_FOR_ATR)) {
		if (I40E_DEBUG_FD & pf->hw.debug_mask)
			FUNC1(&pf->pdev->dev, "ATR disabled, not enough FD filter space.\n");
		disable_atr = true;
	}

	pf->fd_flush_timestamp = jiffies;
	FUNC6(__I40E_FD_ATR_AUTO_DISABLED, pf->state);
	/* flush all filters */
	FUNC9(&pf->hw, I40E_PFQF_CTL_1,
	     I40E_PFQF_CTL_1_CLEARFDTABLE_MASK);
	FUNC4(&pf->hw);
	pf->fd_flush_cnt++;
	pf->fd_add_err = 0;
	do {
		/* Check FD flush status every 5-6msec */
		FUNC8(5000, 6000);
		reg = FUNC5(&pf->hw, I40E_PFQF_CTL_1);
		if (!(reg & I40E_PFQF_CTL_1_CLEARFDTABLE_MASK))
			break;
	} while (flush_wait_retry--);
	if (reg & I40E_PFQF_CTL_1_CLEARFDTABLE_MASK) {
		FUNC2(&pf->pdev->dev, "FD table did not flush, needs more time\n");
	} else {
		/* replay sideband filters */
		FUNC3(pf->vsi[pf->lan_vsi]);
		if (!disable_atr && !pf->fd_tcp4_filter_cnt)
			FUNC0(__I40E_FD_ATR_AUTO_DISABLED, pf->state);
		FUNC0(__I40E_FD_FLUSH_REQUESTED, pf->state);
		if (I40E_DEBUG_FD & pf->hw.debug_mask)
			FUNC1(&pf->pdev->dev, "FD Filter table flushed and FD-SB replayed.\n");
	}
}