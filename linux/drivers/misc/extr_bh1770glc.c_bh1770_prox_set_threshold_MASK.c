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
typedef  int /*<<< orphan*/  u8 ;
struct bh1770_chip {TYPE_1__* client; int /*<<< orphan*/  prox_threshold_hw; int /*<<< orphan*/  prox_threshold; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH1770_PS_TH_LED1 ; 
 int /*<<< orphan*/  FUNC0 (struct bh1770_chip*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct bh1770_chip *chip)
{
	u8 tmp = 0;

	/* sysfs may call this when the chip is powered off */
	if (FUNC2(&chip->client->dev))
		return 0;

	tmp = FUNC0(chip, chip->prox_threshold);
	chip->prox_threshold_hw = tmp;

	return	FUNC1(chip->client, BH1770_PS_TH_LED1,
					tmp);
}