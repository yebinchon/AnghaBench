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
struct tango_chip {scalar_t__ base; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 scalar_t__ PBUS_DATA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 struct tango_chip* FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC2(struct nand_chip *chip, u8 *buf, int len)
{
	struct tango_chip *tchip = FUNC1(chip);

	FUNC0(tchip->base + PBUS_DATA, buf, len);
}