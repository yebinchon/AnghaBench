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
typedef  int /*<<< orphan*/  u64 ;
struct timespec64 {int dummy; } ;
struct ptp_clock_info {int dummy; } ;
struct mv88e6xxx_chip {int /*<<< orphan*/  tstamp_tc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct mv88e6xxx_chip*) ; 
 struct timespec64 FUNC2 (int /*<<< orphan*/ ) ; 
 struct mv88e6xxx_chip* FUNC3 (struct ptp_clock_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ptp_clock_info *ptp,
				 struct timespec64 *ts)
{
	struct mv88e6xxx_chip *chip = FUNC3(ptp);
	u64 ns;

	FUNC0(chip);
	ns = FUNC4(&chip->tstamp_tc);
	FUNC1(chip);

	*ts = FUNC2(ns);

	return 0;
}