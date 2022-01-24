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
struct mv88e6xxx_chip {int ppu_disabled; int /*<<< orphan*/  ppu_timer; int /*<<< orphan*/  ppu_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static int FUNC4(struct mv88e6xxx_chip *chip)
{
	int ret;

	FUNC1(&chip->ppu_mutex);

	/* If the PHY polling unit is enabled, disable it so that
	 * we can access the PHY registers.  If it was already
	 * disabled, cancel the timer that is going to re-enable
	 * it.
	 */
	if (!chip->ppu_disabled) {
		ret = FUNC3(chip);
		if (ret < 0) {
			FUNC2(&chip->ppu_mutex);
			return ret;
		}
		chip->ppu_disabled = 1;
	} else {
		FUNC0(&chip->ppu_timer);
		ret = 0;
	}

	return ret;
}