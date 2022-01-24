#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int strength; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct meson_nfc_nand_chip {int /*<<< orphan*/  bch_mode; } ;
struct TYPE_5__ {int strength; int /*<<< orphan*/  bch; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
 TYPE_2__* meson_ecc ; 
 struct meson_nfc_nand_chip* FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *nand)
{
	struct meson_nfc_nand_chip *meson_chip = FUNC1(nand);
	int i;

	if (nand->ecc.strength > 60 || nand->ecc.strength < 8)
		return -EINVAL;

	for (i = 0; i < FUNC0(meson_ecc); i++) {
		if (meson_ecc[i].strength == nand->ecc.strength) {
			meson_chip->bch_mode = meson_ecc[i].bch;
			return 0;
		}
	}

	return -EINVAL;
}