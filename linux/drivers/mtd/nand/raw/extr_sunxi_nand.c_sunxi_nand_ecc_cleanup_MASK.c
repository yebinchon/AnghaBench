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
struct nand_ecc_ctrl {int mode; } ;

/* Variables and functions */
#define  NAND_ECC_HW 129 
#define  NAND_ECC_NONE 128 
 int /*<<< orphan*/  FUNC0 (struct nand_ecc_ctrl*) ; 

__attribute__((used)) static void FUNC1(struct nand_ecc_ctrl *ecc)
{
	switch (ecc->mode) {
	case NAND_ECC_HW:
		FUNC0(ecc);
		break;
	case NAND_ECC_NONE:
	default:
		break;
	}
}