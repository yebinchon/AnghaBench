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
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int NAND_STATUS_READY ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC2(struct nand_chip *chip)
{
	FUNC1(chip);
	FUNC0(chip);

	return NAND_STATUS_READY;
}