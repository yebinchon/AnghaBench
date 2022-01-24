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
struct ksz_device {int /*<<< orphan*/  mib_read; scalar_t__ mib_read_interval; int /*<<< orphan*/  mib_read_timer; } ;

/* Variables and functions */
 struct ksz_device* dev ; 
 struct ksz_device* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  mib_read_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct ksz_device *dev = FUNC0(dev, t, mib_read_timer);

	FUNC1(&dev->mib_read_timer, jiffies + dev->mib_read_interval);
	FUNC2(&dev->mib_read);
}