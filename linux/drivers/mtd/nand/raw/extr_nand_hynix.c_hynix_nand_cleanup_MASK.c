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
struct hynix_nand {struct hynix_nand* read_retry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hynix_nand*) ; 
 struct hynix_nand* FUNC1 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nand_chip *chip)
{
	struct hynix_nand *hynix = FUNC1(chip);

	if (!hynix)
		return;

	FUNC0(hynix->read_retry);
	FUNC0(hynix);
	FUNC2(chip, NULL);
}