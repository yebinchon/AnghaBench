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
struct nand_chip {TYPE_1__ id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nand_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hynix_mlc_1xnm_rr_otps ; 
 int FUNC2 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip)
{
	int i, ret = 0;
	bool valid_jedecid;

	valid_jedecid = FUNC2(chip);

	/*
	 * We only support read-retry for 1xnm NANDs, and those NANDs all
	 * expose a valid JEDEC ID.
	 */
	if (valid_jedecid) {
		u8 nand_tech = chip->id.data[5] >> 4;

		/* 1xnm technology */
		if (nand_tech == 4) {
			for (i = 0; i < FUNC0(hynix_mlc_1xnm_rr_otps);
			     i++) {
				/*
				 * FIXME: Hynix recommend to copy the
				 * read-retry OTP area into a normal page.
				 */
				ret = FUNC1(chip,
						hynix_mlc_1xnm_rr_otps);
				if (!ret)
					break;
			}
		}
	}

	if (ret)
		FUNC3("failed to initialize read-retry infrastructure");

	return 0;
}