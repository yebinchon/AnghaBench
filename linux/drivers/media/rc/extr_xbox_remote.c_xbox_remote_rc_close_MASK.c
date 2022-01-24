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
struct xbox_remote {int /*<<< orphan*/  irq_urb; } ;
struct rc_dev {struct xbox_remote* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct rc_dev *rdev)
{
	struct xbox_remote *xbox_remote = rdev->priv;

	FUNC0(xbox_remote->irq_urb);
}