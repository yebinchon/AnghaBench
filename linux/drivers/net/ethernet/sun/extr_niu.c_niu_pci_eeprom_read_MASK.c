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
struct niu {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  ESPC_PIO_STAT ; 
 int ESPC_PIO_STAT_ADDR ; 
 int ESPC_PIO_STAT_ADDR_SHIFT ; 
 int ESPC_PIO_STAT_DATA ; 
 int ESPC_PIO_STAT_DATA_SHIFT ; 
 int ESPC_PIO_STAT_READ_END ; 
 int ESPC_PIO_STAT_READ_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct niu *np, u32 addr)
{
	u64 frame, frame_base = (ESPC_PIO_STAT_READ_START |
				 (addr << ESPC_PIO_STAT_ADDR_SHIFT));
	int limit;

	if (addr > (ESPC_PIO_STAT_ADDR >> ESPC_PIO_STAT_ADDR_SHIFT))
		return -EINVAL;

	frame = frame_base;
	FUNC2(ESPC_PIO_STAT, frame);
	limit = 64;
	do {
		FUNC3(5);
		frame = FUNC1(ESPC_PIO_STAT);
		if (frame & ESPC_PIO_STAT_READ_END)
			break;
	} while (limit--);
	if (!(frame & ESPC_PIO_STAT_READ_END)) {
		FUNC0(np->device, "EEPROM read timeout frame[%llx]\n",
			(unsigned long long) frame);
		return -ENODEV;
	}

	frame = frame_base;
	FUNC2(ESPC_PIO_STAT, frame);
	limit = 64;
	do {
		FUNC3(5);
		frame = FUNC1(ESPC_PIO_STAT);
		if (frame & ESPC_PIO_STAT_READ_END)
			break;
	} while (limit--);
	if (!(frame & ESPC_PIO_STAT_READ_END)) {
		FUNC0(np->device, "EEPROM read timeout frame[%llx]\n",
			(unsigned long long) frame);
		return -ENODEV;
	}

	frame = FUNC1(ESPC_PIO_STAT);
	return (frame & ESPC_PIO_STAT_DATA) >> ESPC_PIO_STAT_DATA_SHIFT;
}