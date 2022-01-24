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
struct nand_ecc_step_info {int stepsize; int nstrengths; int* strengths; } ;
struct nand_ecc_caps {int nstepinfos; int (* calc_ecc_bytes ) (int,int) ;struct nand_ecc_step_info* stepinfos; } ;
struct TYPE_2__ {int size; int strength; int bytes; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int writesize; } ;

/* Variables and functions */
 int ENOSPC ; 
 int ENOTSUPP ; 
 scalar_t__ FUNC0 (int) ; 
 struct mtd_info* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int
FUNC4(struct nand_chip *chip,
		    const struct nand_ecc_caps *caps, int oobavail)
{
	struct mtd_info *mtd = FUNC1(chip);
	const struct nand_ecc_step_info *stepinfo;
	int preset_step = chip->ecc.size;
	int preset_strength = chip->ecc.strength;
	int ecc_bytes, nsteps = mtd->writesize / preset_step;
	int i, j;

	for (i = 0; i < caps->nstepinfos; i++) {
		stepinfo = &caps->stepinfos[i];

		if (stepinfo->stepsize != preset_step)
			continue;

		for (j = 0; j < stepinfo->nstrengths; j++) {
			if (stepinfo->strengths[j] != preset_strength)
				continue;

			ecc_bytes = caps->calc_ecc_bytes(preset_step,
							 preset_strength);
			if (FUNC0(ecc_bytes < 0))
				return ecc_bytes;

			if (ecc_bytes * nsteps > oobavail) {
				FUNC2("ECC (step, strength) = (%d, %d) does not fit in OOB",
				       preset_step, preset_strength);
				return -ENOSPC;
			}

			chip->ecc.bytes = ecc_bytes;

			return 0;
		}
	}

	FUNC2("ECC (step, strength) = (%d, %d) not supported on this controller",
	       preset_step, preset_strength);

	return -ENOTSUPP;
}