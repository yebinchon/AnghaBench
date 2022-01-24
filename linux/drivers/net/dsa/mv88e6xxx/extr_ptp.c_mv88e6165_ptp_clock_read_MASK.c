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
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct mv88e6xxx_chip {int dummy; } ;
struct cyclecounter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  MV88E6XXX_PTP_GC_TIME_LO ; 
 struct mv88e6xxx_chip* FUNC1 (struct cyclecounter const*) ; 
 int FUNC2 (struct mv88e6xxx_chip*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64 FUNC3(const struct cyclecounter *cc)
{
	struct mv88e6xxx_chip *chip = FUNC1(cc);
	u16 phc_time[2];
	int err;

	err = FUNC2(chip, MV88E6XXX_PTP_GC_TIME_LO, phc_time,
				 FUNC0(phc_time));
	if (err)
		return 0;
	else
		return ((u32)phc_time[1] << 16) | phc_time[0];
}