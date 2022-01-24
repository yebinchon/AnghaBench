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
typedef  int uint64_t ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct mv88e6xxx_hw_stat {int type; int reg; int size; } ;
struct mv88e6xxx_chip {int dummy; } ;

/* Variables and functions */
#define  STATS_TYPE_BANK0 130 
#define  STATS_TYPE_BANK1 129 
#define  STATS_TYPE_PORT 128 
 int U64_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct mv88e6xxx_chip*,int,int*) ; 
 int FUNC1 (struct mv88e6xxx_chip*,int,int,int*) ; 

__attribute__((used)) static uint64_t FUNC2(struct mv88e6xxx_chip *chip,
					    struct mv88e6xxx_hw_stat *s,
					    int port, u16 bank1_select,
					    u16 histogram)
{
	u32 low;
	u32 high = 0;
	u16 reg = 0;
	int err;
	u64 value;

	switch (s->type) {
	case STATS_TYPE_PORT:
		err = FUNC1(chip, port, s->reg, &reg);
		if (err)
			return U64_MAX;

		low = reg;
		if (s->size == 4) {
			err = FUNC1(chip, port, s->reg + 1, &reg);
			if (err)
				return U64_MAX;
			low |= ((u32)reg) << 16;
		}
		break;
	case STATS_TYPE_BANK1:
		reg = bank1_select;
		/* fall through */
	case STATS_TYPE_BANK0:
		reg |= s->reg | histogram;
		FUNC0(chip, reg, &low);
		if (s->size == 8)
			FUNC0(chip, reg + 1, &high);
		break;
	default:
		return U64_MAX;
	}
	value = (((u64)high) << 32) | low;
	return value;
}