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
struct nand_chip {int dummy; } ;
typedef  int /*<<< orphan*/  jedecid ;

/* Variables and functions */
 int FUNC0 (struct nand_chip*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC2(struct nand_chip *chip)
{
	u8 jedecid[5] = { };
	int ret;

	ret = FUNC0(chip, 0x40, jedecid, sizeof(jedecid));
	if (ret)
		return false;

	return !FUNC1("JEDEC", jedecid, sizeof(jedecid));
}