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
typedef  int uint32_t ;
struct rc_dev {struct iguanair* priv; } ;
struct iguanair {int carrier; int cycle_overhead; int /*<<< orphan*/  lock; TYPE_1__* packet; } ;
struct TYPE_2__ {int busy7; int busy4; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct rc_dev *dev, uint32_t carrier)
{
	struct iguanair *ir = dev->priv;

	if (carrier < 25000 || carrier > 150000)
		return -EINVAL;

	FUNC1(&ir->lock);

	if (carrier != ir->carrier) {
		uint32_t cycles, fours, sevens;

		ir->carrier = carrier;

		cycles = FUNC0(24000000, carrier * 2) -
							ir->cycle_overhead;

		/*
		 * Calculate minimum number of 7 cycles needed so
		 * we are left with a multiple of 4; so we want to have
		 * (sevens * 7) & 3 == cycles & 3
		 */
		sevens = (4 - cycles) & 3;
		fours = (cycles - sevens * 7) / 4;

		/*
		 * The firmware interprets these values as a relative offset
		 * for a branch. Immediately following the branches, there
		 * 4 instructions of 7 cycles (2 bytes each) and 110
		 * instructions of 4 cycles (1 byte each). A relative branch
		 * of 0 will execute all of them, branch further for less
		 * cycle burning.
		 */
		ir->packet->busy7 = (4 - sevens) * 2;
		ir->packet->busy4 = 110 - fours;
	}

	FUNC2(&ir->lock);

	return 0;
}