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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct xtpg_device {TYPE_1__ ctrl_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xtpg_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct xtpg_device *xtpg,
					bool passthrough, bool pattern)
{
	FUNC1(xtpg->ctrl_handler.lock);
	FUNC0(xtpg, passthrough, pattern);
	FUNC2(xtpg->ctrl_handler.lock);
}