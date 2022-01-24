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
typedef  int u8 ;
struct TYPE_2__ {int* data; } ;
struct nand_chip {int /*<<< orphan*/  options; TYPE_1__ id; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_NEED_SCRAMBLING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct nand_chip *chip,
						       bool valid_jedecid)
{
	u8 nand_tech;

	/* We need scrambling on all TLC NANDs*/
	if (FUNC0(&chip->base) > 2)
		chip->options |= NAND_NEED_SCRAMBLING;

	/* And on MLC NANDs with sub-3xnm process */
	if (valid_jedecid) {
		nand_tech = chip->id.data[5] >> 4;

		/* < 3xnm */
		if (nand_tech > 0)
			chip->options |= NAND_NEED_SCRAMBLING;
	} else {
		nand_tech = chip->id.data[5] & 0x7;

		/* < 32nm */
		if (nand_tech > 2)
			chip->options |= NAND_NEED_SCRAMBLING;
	}
}