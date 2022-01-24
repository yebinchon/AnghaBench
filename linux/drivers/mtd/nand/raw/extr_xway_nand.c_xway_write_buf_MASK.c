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
typedef  int /*<<< orphan*/  u_char ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_WRITE_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC2(struct nand_chip *chip, const u_char *buf, int len)
{
	int i;

	for (i = 0; i < len; i++)
		FUNC1(FUNC0(chip), NAND_WRITE_DATA, buf[i]);
}