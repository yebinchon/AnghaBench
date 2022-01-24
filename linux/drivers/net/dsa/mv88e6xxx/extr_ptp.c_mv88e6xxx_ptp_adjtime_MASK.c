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
struct ptp_clock_info {int dummy; } ;
struct mv88e6xxx_chip {int /*<<< orphan*/  tstamp_tc; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 struct mv88e6xxx_chip* FUNC2 (struct ptp_clock_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ptp_clock_info *ptp, s64 delta)
{
	struct mv88e6xxx_chip *chip = FUNC2(ptp);

	FUNC0(chip);
	FUNC3(&chip->tstamp_tc, delta);
	FUNC1(chip);

	return 0;
}