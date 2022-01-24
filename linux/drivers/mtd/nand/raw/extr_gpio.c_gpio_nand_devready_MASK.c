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
struct gpiomtd {int /*<<< orphan*/  rdy; } ;

/* Variables and functions */
 struct gpiomtd* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nand_chip*) ; 

__attribute__((used)) static int FUNC3(struct nand_chip *chip)
{
	struct gpiomtd *gpiomtd = FUNC0(FUNC2(chip));

	return FUNC1(gpiomtd->rdy);
}