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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  stage; } ;
struct fmdev {int /*<<< orphan*/  flag; TYPE_1__ irq_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_AF_SWITCH_INPROGRESS ; 
 int /*<<< orphan*/  FM_INTTASK_RUNNING ; 
 int /*<<< orphan*/  FM_SEND_FLAG_GETCMD_IDX ; 
 scalar_t__ FUNC0 (struct fmdev*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct fmdev *fmdev)
{
	struct sk_buff *skb;

	if (FUNC0(fmdev, &skb))
		return;

	fmdev->irq_info.stage = FM_SEND_FLAG_GETCMD_IDX;
	FUNC2(FM_AF_SWITCH_INPROGRESS, &fmdev->flag);
	FUNC1(FM_INTTASK_RUNNING, &fmdev->flag);
}