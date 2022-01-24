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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  u_char ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct flchip {int /*<<< orphan*/  mutex; int /*<<< orphan*/  start; int /*<<< orphan*/  state; } ;
struct cfi_private {int /*<<< orphan*/  device_type; int /*<<< orphan*/  addr_unlock1; int /*<<< orphan*/  addr_unlock2; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FL_LOCKING ; 
 int /*<<< orphan*/  FL_READY ; 
 int /*<<< orphan*/  FUNC1 (struct map_info*,struct flchip*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct map_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct map_info*,struct cfi_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct map_info*,struct flchip*,scalar_t__) ; 
 int FUNC5 (struct map_info*,struct flchip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct map_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct map_info*,struct flchip*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC13(struct map_info *map, struct flchip *chip, loff_t adr,
		       size_t len, u_char *buf, size_t grouplen)
{
	struct cfi_private *cfi = map->fldrv_priv;
	uint8_t lockreg;
	unsigned long timeo;
	int ret;

	/* make sure area matches group boundaries */
	if ((adr != 0) || (len != grouplen))
		return -EINVAL;

	FUNC8(&chip->mutex);
	ret = FUNC5(map, chip, chip->start, FL_LOCKING);
	if (ret) {
		FUNC9(&chip->mutex);
		return ret;
	}
	chip->state = FL_LOCKING;

	/* Enter lock register command */
	FUNC3(0xAA, cfi->addr_unlock1, chip->start, map, cfi,
			 cfi->device_type, NULL);
	FUNC3(0x55, cfi->addr_unlock2, chip->start, map, cfi,
			 cfi->device_type, NULL);
	FUNC3(0x40, cfi->addr_unlock1, chip->start, map, cfi,
			 cfi->device_type, NULL);

	/* read lock register */
	lockreg = FUNC2(map, 0);

	/* set bit 0 to protect extended memory block */
	lockreg &= ~0x01;

	/* set bit 0 to protect extended memory block */
	/* write lock register */
	FUNC6(map, FUNC0(0xA0), chip->start);
	FUNC6(map, FUNC0(lockreg), chip->start);

	/* wait for chip to become ready */
	timeo = jiffies + FUNC7(2);
	for (;;) {
		if (FUNC4(map, chip, adr))
			break;

		if (FUNC12(jiffies, timeo)) {
			FUNC10("Waiting for chip to be ready timed out.\n");
			ret = -EIO;
			break;
		}
		FUNC1(map, chip, 0, 1);
	}

	/* exit protection commands */
	FUNC6(map, FUNC0(0x90), chip->start);
	FUNC6(map, FUNC0(0x00), chip->start);

	chip->state = FL_READY;
	FUNC11(map, chip, chip->start);
	FUNC9(&chip->mutex);

	return ret;
}