#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct timer_list {int dummy; } ;
struct channel_info {int /*<<< orphan*/  tsklet; scalar_t__ irec; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct c8sectpfei {int tsin_count; TYPE_1__ timer; struct channel_info** channel_data; } ;

/* Variables and functions */
 scalar_t__ DMA_PRDS_TPENABLE ; 
 int /*<<< orphan*/  POLL_MSECS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct c8sectpfei* fei ; 
 struct c8sectpfei* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct c8sectpfei *fei = FUNC1(fei, t, timer);
	struct channel_info *channel;
	int chan_num;

	/* iterate through input block channels */
	for (chan_num = 0; chan_num < fei->tsin_count; chan_num++) {
		channel = fei->channel_data[chan_num];

		/* is this descriptor initialised and TP enabled */
		if (channel->irec && FUNC3(channel->irec + DMA_PRDS_TPENABLE))
			FUNC4(&channel->tsklet);
	}

	fei->timer.expires = jiffies +	FUNC2(POLL_MSECS);
	FUNC0(&fei->timer);
}