#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct atmel_pmecc_user {int eccbytes; int isr; struct atmel_pmecc* pmecc; } ;
struct TYPE_3__ {scalar_t__ errloc; } ;
struct atmel_pmecc {int /*<<< orphan*/  dev; TYPE_2__* caps; TYPE_1__ regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  el_offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int EINVAL ; 
 int FUNC2 (struct atmel_pmecc_user*) ; 
 int /*<<< orphan*/  FUNC3 (struct atmel_pmecc_user*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_pmecc_user*) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_pmecc_user*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (struct atmel_pmecc_user*) ; 
 int FUNC8 (scalar_t__) ; 

int FUNC9(struct atmel_pmecc_user *user, int sector,
			       void *data, void *ecc)
{
	struct atmel_pmecc *pmecc = user->pmecc;
	int sectorsize = FUNC7(user);
	int eccbytes = user->eccbytes;
	int i, nerrors;

	if (!(user->isr & FUNC1(sector)))
		return 0;

	FUNC3(user, sector);
	FUNC5(user);
	FUNC4(user);

	nerrors = FUNC2(user);
	if (nerrors < 0)
		return nerrors;

	for (i = 0; i < nerrors; i++) {
		const char *area;
		int byte, bit;
		u32 errpos;
		u8 *ptr;

		errpos = FUNC8(pmecc->regs.errloc +
				FUNC0(pmecc->caps->el_offset, i));
		errpos--;

		byte = errpos / 8;
		bit = errpos % 8;

		if (byte < sectorsize) {
			ptr = data + byte;
			area = "data";
		} else if (byte < sectorsize + eccbytes) {
			ptr = ecc + byte - sectorsize;
			area = "ECC";
		} else {
			FUNC6(pmecc->dev,
				"Invalid errpos value (%d, max is %d)\n",
				errpos, (sectorsize + eccbytes) * 8);
			return -EINVAL;
		}

		FUNC6(pmecc->dev,
			"Bit flip in %s area, byte %d: 0x%02x -> 0x%02x\n",
			area, byte, *ptr, (unsigned int)(*ptr ^ FUNC1(bit)));

		*ptr ^= FUNC1(bit);
	}

	return nerrors;
}