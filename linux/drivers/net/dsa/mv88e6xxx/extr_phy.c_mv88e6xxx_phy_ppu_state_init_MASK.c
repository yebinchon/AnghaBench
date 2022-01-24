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
struct mv88e6xxx_chip {int /*<<< orphan*/  ppu_timer; int /*<<< orphan*/  ppu_work; int /*<<< orphan*/  ppu_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mv88e6xxx_phy_ppu_reenable_timer ; 
 int /*<<< orphan*/  mv88e6xxx_phy_ppu_reenable_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mv88e6xxx_chip *chip)
{
	FUNC1(&chip->ppu_mutex);
	FUNC0(&chip->ppu_work, mv88e6xxx_phy_ppu_reenable_work);
	FUNC2(&chip->ppu_timer, mv88e6xxx_phy_ppu_reenable_timer, 0);
}