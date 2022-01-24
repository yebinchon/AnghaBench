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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct ndfc_controller {scalar_t__ ndfcbase; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ NDFC_DATA ; 
 struct ndfc_controller* FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nand_chip *chip, const uint8_t *buf, int len)
{
	struct ndfc_controller *ndfc = FUNC0(chip);
	uint32_t *p = (uint32_t *) buf;

	for(;len > 0; len -= 4)
		FUNC1(ndfc->ndfcbase + NDFC_DATA, *p++);
}