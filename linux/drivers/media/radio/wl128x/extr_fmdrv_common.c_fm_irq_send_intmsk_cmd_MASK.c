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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  mask; } ;
struct fmdev {TYPE_1__ irq_info; } ;
typedef  int /*<<< orphan*/  payload ;

/* Variables and functions */
 int /*<<< orphan*/  FM_HANDLE_INTMSK_CMD_RESP_IDX ; 
 int /*<<< orphan*/  INT_MASK_SET ; 
 int /*<<< orphan*/  REG_WR ; 
 int /*<<< orphan*/  FUNC0 (struct fmdev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fmdev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct fmdev *fmdev)
{
	u16 payload;

	/* Re-enable FM interrupts */
	payload = fmdev->irq_info.mask;

	if (!FUNC1(fmdev, INT_MASK_SET, REG_WR, &payload,
			sizeof(payload), NULL))
		FUNC0(fmdev, FM_HANDLE_INTMSK_CMD_RESP_IDX);
}