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
struct map_info {int /*<<< orphan*/  name; struct cfi_private* fldrv_priv; } ;
struct flchip {int /*<<< orphan*/  start; } ;
struct cfi_private {int /*<<< orphan*/  device_type; int /*<<< orphan*/  addr_unlock1; } ;
typedef  int /*<<< orphan*/  map_word ;

/* Variables and functions */
 unsigned long CFI_SR_ESB ; 
 unsigned long CFI_SR_PSB ; 
 unsigned long CFI_SR_SLSB ; 
 unsigned long CFI_SR_WBASB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct map_info*,struct cfi_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cfi_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct map_info*,unsigned long) ; 
 scalar_t__ FUNC5 (struct map_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct map_info *map, struct flchip *chip,
				 unsigned long adr)
{
	struct cfi_private *cfi = map->fldrv_priv;
	map_word status;

	if (!FUNC3(cfi))
		return;

	FUNC2(0x70, cfi->addr_unlock1, chip->start, map, cfi,
			 cfi->device_type, NULL);
	status = FUNC4(map, adr);

	if (FUNC5(map, status, FUNC0(0x3a))) {
		unsigned long chipstatus = FUNC1(status);

		if (chipstatus & CFI_SR_ESB)
			FUNC6("%s erase operation failed, status %lx\n",
			       map->name, chipstatus);
		if (chipstatus & CFI_SR_PSB)
			FUNC6("%s program operation failed, status %lx\n",
			       map->name, chipstatus);
		if (chipstatus & CFI_SR_WBASB)
			FUNC6("%s buffer program command aborted, status %lx\n",
			       map->name, chipstatus);
		if (chipstatus & CFI_SR_SLSB)
			FUNC6("%s sector write protected, status %lx\n",
			       map->name, chipstatus);
	}
}