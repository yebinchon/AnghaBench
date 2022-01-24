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
struct st_rc_device {scalar_t__ rx_base; } ;
struct rc_dev {struct st_rc_device* priv; } ;

/* Variables and functions */
 scalar_t__ IRB_RX_EN ; 
 int IRB_RX_INTS ; 
 scalar_t__ IRB_RX_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct rc_dev *rdev)
{
	struct st_rc_device *dev = rdev->priv;
	unsigned long flags;
	FUNC1(flags);
	/* enable interrupts and receiver */
	FUNC2(IRB_RX_INTS, dev->rx_base + IRB_RX_INT_EN);
	FUNC2(0x01, dev->rx_base + IRB_RX_EN);
	FUNC0(flags);

	return 0;
}