#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nand_chip {int dummy; } ;
struct cafe_priv {int /*<<< orphan*/  ctl1; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL1_CHIPSELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct cafe_priv* FUNC1 (struct nand_chip*) ; 

__attribute__((used)) static void FUNC2(struct nand_chip *chip, int chipnr)
{
	struct cafe_priv *cafe = FUNC1(chip);

	FUNC0(&cafe->pdev->dev, "select_chip %d\n", chipnr);

	/* Mask the appropriate bit into the stored value of ctl1
	   which will be used by cafe_nand_cmdfunc() */
	if (chipnr)
		cafe->ctl1 |= CTRL1_CHIPSELECT;
	else
		cafe->ctl1 &= ~CTRL1_CHIPSELECT;
}