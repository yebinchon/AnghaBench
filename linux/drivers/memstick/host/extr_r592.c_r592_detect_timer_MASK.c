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
struct r592_device {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  detect_timer ; 
 struct r592_device* dev ; 
 struct r592_device* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r592_device*) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct r592_device *dev = FUNC0(dev, t, detect_timer);
	FUNC2(dev);
	FUNC1(dev->host);
}