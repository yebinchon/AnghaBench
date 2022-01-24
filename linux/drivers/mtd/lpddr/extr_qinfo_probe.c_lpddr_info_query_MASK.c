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
typedef  unsigned int uint16_t ;
struct map_info {scalar_t__ pfow_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int DSR_READY_STATUS ; 
 unsigned long LPDDR_INFO_QUERY ; 
 unsigned long LPDDR_START_EXECUTION ; 
 scalar_t__ PFOW_COMMAND_ADDRESS_H ; 
 scalar_t__ PFOW_COMMAND_ADDRESS_L ; 
 scalar_t__ PFOW_COMMAND_CODE ; 
 scalar_t__ PFOW_COMMAND_DATA ; 
 scalar_t__ PFOW_COMMAND_EXECUTE ; 
 scalar_t__ PFOW_DSR ; 
 unsigned long FUNC2 (struct map_info*,char*) ; 
 int FUNC3 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct map_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct map_info*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static uint16_t FUNC7(struct map_info *map, char *id_str)
{
	unsigned int dsr, val;
	int bits_per_chip = FUNC3(map) * 8;
	unsigned long adr = FUNC2(map, id_str);
	int attempts = 20;

	/* Write a request for the PFOW record */
	FUNC5(map, FUNC0(LPDDR_INFO_QUERY),
			map->pfow_base + PFOW_COMMAND_CODE);
	FUNC5(map, FUNC0(adr & ((1 << bits_per_chip) - 1)),
			map->pfow_base + PFOW_COMMAND_ADDRESS_L);
	FUNC5(map, FUNC0(adr >> bits_per_chip),
			map->pfow_base + PFOW_COMMAND_ADDRESS_H);
	FUNC5(map, FUNC0(LPDDR_START_EXECUTION),
			map->pfow_base + PFOW_COMMAND_EXECUTE);

	while ((attempts--) > 0) {
		dsr = FUNC1(FUNC4(map, map->pfow_base + PFOW_DSR));
		if (dsr & DSR_READY_STATUS)
			break;
		FUNC6(10);
	}

	val = FUNC1(FUNC4(map, map->pfow_base + PFOW_COMMAND_DATA));
	return val;
}