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
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ pars_flags; } ;
union eth_rx_cqe {TYPE_2__ fast_path_regular; } ;
struct sk_buff {int dummy; } ;
struct qede_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int PARSING_AND_ERR_FLAGS_TIMESTAMPRECORDED_SHIFT ; 
 int PARSING_AND_ERR_FLAGS_TIMESYNCPKT_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct qede_dev*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline void FUNC5(struct qede_dev *edev,
					 union eth_rx_cqe *cqe,
					 struct sk_buff *skb)
{
	/* Check if this packet was timestamped */
	if (FUNC4(FUNC1(cqe->fast_path_regular.pars_flags.flags) &
		     (1 << PARSING_AND_ERR_FLAGS_TIMESTAMPRECORDED_SHIFT))) {
		if (FUNC2(FUNC1(cqe->fast_path_regular.pars_flags.flags)
		    & (1 << PARSING_AND_ERR_FLAGS_TIMESYNCPKT_SHIFT))) {
			FUNC3(edev, skb);
		} else {
			FUNC0(edev,
				"Timestamp recorded for non PTP packets\n");
		}
	}
}