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
typedef  int /*<<< orphan*/  uint8_t ;
struct mv88e6xxx_chip {int dummy; } ;
struct mv88e6352_serdes_hw_stat {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int FUNC0 (struct mv88e6352_serdes_hw_stat*) ; 
 int ETH_GSTRING_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mv88e6xxx_chip*,int) ; 
 struct mv88e6352_serdes_hw_stat* mv88e6352_serdes_hw_stats ; 

int FUNC3(struct mv88e6xxx_chip *chip,
				 int port, uint8_t *data)
{
	struct mv88e6352_serdes_hw_stat *stat;
	int i;

	if (!FUNC2(chip, port))
		return 0;

	for (i = 0; i < FUNC0(mv88e6352_serdes_hw_stats); i++) {
		stat = &mv88e6352_serdes_hw_stats[i];
		FUNC1(data + i * ETH_GSTRING_LEN, stat->string,
		       ETH_GSTRING_LEN);
	}
	return FUNC0(mv88e6352_serdes_hw_stats);
}