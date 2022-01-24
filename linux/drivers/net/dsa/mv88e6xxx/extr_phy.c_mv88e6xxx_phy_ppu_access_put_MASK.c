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
struct mv88e6xxx_chip {int /*<<< orphan*/  ppu_mutex; int /*<<< orphan*/  ppu_timer; } ;

/* Variables and functions */
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct mv88e6xxx_chip *chip)
{
	/* Schedule a timer to re-enable the PHY polling unit. */
	FUNC0(&chip->ppu_timer, jiffies + FUNC1(10));
	FUNC2(&chip->ppu_mutex);
}