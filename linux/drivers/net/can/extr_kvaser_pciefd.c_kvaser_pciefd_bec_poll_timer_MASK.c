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
struct timer_list {int dummy; } ;
struct kvaser_pciefd_can {scalar_t__ err_rep_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  bec_poll_timer ; 
 struct kvaser_pciefd_can* can ; 
 struct kvaser_pciefd_can* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvaser_pciefd_can*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvaser_pciefd_can*) ; 

__attribute__((used)) static void FUNC3(struct timer_list *data)
{
	struct kvaser_pciefd_can *can = FUNC0(can, data, bec_poll_timer);

	FUNC1(can);
	FUNC2(can);
	can->err_rep_cnt = 0;
}