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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u16 ;
struct mv88e6xxx_hw_stat {int type; } ;
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mv88e6xxx_hw_stat*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*,struct mv88e6xxx_hw_stat*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mv88e6xxx_hw_stat* mv88e6xxx_hw_stats ; 
 int /*<<< orphan*/  FUNC2 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct mv88e6xxx_chip*) ; 

__attribute__((used)) static int FUNC4(struct mv88e6xxx_chip *chip, int port,
				     uint64_t *data, int types,
				     u16 bank1_select, u16 histogram)
{
	struct mv88e6xxx_hw_stat *stat;
	int i, j;

	for (i = 0, j = 0; i < FUNC0(mv88e6xxx_hw_stats); i++) {
		stat = &mv88e6xxx_hw_stats[i];
		if (stat->type & types) {
			FUNC2(chip);
			data[j] = FUNC1(chip, stat, port,
							      bank1_select,
							      histogram);
			FUNC3(chip);

			j++;
		}
	}
	return j;
}