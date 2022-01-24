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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct map_info {int dummy; } ;
struct cfi_private {int dummy; } ;
typedef  int /*<<< orphan*/  map_word ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct map_info*,struct cfi_private*) ; 
 scalar_t__ FUNC1 (scalar_t__,struct map_info*,struct cfi_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct map_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct map_info*,int /*<<< orphan*/ ,scalar_t__) ; 

uint32_t FUNC4(u_char cmd, uint32_t cmd_addr, uint32_t base,
				struct map_info *map, struct cfi_private *cfi,
				int type, map_word *prev_val)
{
	map_word val;
	uint32_t addr = base + FUNC1(cmd_addr, map, cfi);
	val = FUNC0(cmd, map, cfi);

	if (prev_val)
		*prev_val = FUNC2(map, addr);

	FUNC3(map, val, addr);

	return addr - base;
}