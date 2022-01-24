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
typedef  int /*<<< orphan*/  u_char ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {scalar_t__ state; int /*<<< orphan*/  mutex; scalar_t__ start; } ;
struct cfi_private {int dummy; } ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FL_POINT ; 
 scalar_t__ FL_READY ; 
 int FUNC1 (struct map_info*,struct flchip*,unsigned long,scalar_t__) ; 
 int FUNC2 (struct map_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct map_info*,int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct map_info*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct map_info*,struct flchip*,unsigned long) ; 

__attribute__((used)) static inline int FUNC8(struct map_info *map, struct flchip *chip, loff_t adr, size_t len, u_char *buf)
{
	unsigned long cmd_addr;
	struct cfi_private *cfi = map->fldrv_priv;
	int ret;

	adr += chip->start;

	/* Ensure cmd read/writes are aligned. */
	cmd_addr = adr & ~(FUNC2(map)-1);

	FUNC5(&chip->mutex);
	ret = FUNC1(map, chip, cmd_addr, FL_READY);
	if (ret) {
		FUNC6(&chip->mutex);
		return ret;
	}

	if (chip->state != FL_POINT && chip->state != FL_READY) {
		FUNC4(map, FUNC0(0xff), cmd_addr);

		chip->state = FL_READY;
	}

	FUNC3(map, buf, adr, len);

	FUNC7(map, chip, cmd_addr);

	FUNC6(&chip->mutex);
	return 0;
}