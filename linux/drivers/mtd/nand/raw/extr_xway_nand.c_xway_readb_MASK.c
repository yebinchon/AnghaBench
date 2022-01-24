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
typedef  int /*<<< orphan*/  u8 ;
struct xway_nand_data {scalar_t__ nandaddr; } ;
struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 struct nand_chip* FUNC0 (struct mtd_info*) ; 
 struct xway_nand_data* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static u8 FUNC3(struct mtd_info *mtd, int op)
{
	struct nand_chip *chip = FUNC0(mtd);
	struct xway_nand_data *data = FUNC1(chip);

	return FUNC2(data->nandaddr + op);
}