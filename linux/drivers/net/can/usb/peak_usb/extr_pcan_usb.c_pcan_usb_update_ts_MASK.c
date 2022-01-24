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
struct pcan_usb_msg_context {scalar_t__ end; scalar_t__ rec_idx; int /*<<< orphan*/  ts16; TYPE_1__* pdev; int /*<<< orphan*/  ptr; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  time_ref; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pcan_usb_msg_context *mc)
{
	__le16 tmp16;

	if ((mc->ptr+2) > mc->end)
		return -EINVAL;

	FUNC1(&tmp16, mc->ptr, 2);

	mc->ts16 = FUNC0(tmp16);

	if (mc->rec_idx > 0)
		FUNC3(&mc->pdev->time_ref, mc->ts16);
	else
		FUNC2(&mc->pdev->time_ref, mc->ts16);

	return 0;
}