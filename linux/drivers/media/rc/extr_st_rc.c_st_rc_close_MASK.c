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
 scalar_t__ IRB_RX_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct rc_dev *rdev)
{
	struct st_rc_device *dev = rdev->priv;
	/* disable interrupts and receiver */
	FUNC0(0x00, dev->rx_base + IRB_RX_EN);
	FUNC0(0x00, dev->rx_base + IRB_RX_INT_EN);
}