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
struct nand_chip {int /*<<< orphan*/  oob_poi; int /*<<< orphan*/  cur_cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct nand_chip*) ; 
 int FUNC2 (struct nand_chip*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nand_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nand_chip *chip,
					     const u8 *buf,
					     int oob_required, int page)
{
	int ret;

	FUNC3(chip, chip->cur_cs);
	FUNC1(chip);
	ret = FUNC2(chip, buf, chip->oob_poi,
						   false, page);
	FUNC0(chip);

	return ret;
}