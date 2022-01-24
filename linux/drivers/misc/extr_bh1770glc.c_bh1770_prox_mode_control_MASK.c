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
struct bh1770_chip {int prox_force_update; int /*<<< orphan*/  client; int /*<<< orphan*/  lux_rate_index; scalar_t__ prox_data; scalar_t__ prox_enable_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH1770_DISABLE ; 
 int /*<<< orphan*/  BH1770_ENABLE ; 
 int /*<<< orphan*/  BH1770_PS_CONTROL ; 
 int /*<<< orphan*/  BH1770_STANDALONE ; 
 int /*<<< orphan*/  BH1770_STANDBY ; 
 int /*<<< orphan*/  PROX_BELOW_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (struct bh1770_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct bh1770_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bh1770_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bh1770_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bh1770_chip*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct bh1770_chip *chip)
{
	if (chip->prox_enable_count) {
		chip->prox_force_update = true; /* Force immediate update */

		FUNC1(chip, chip->lux_rate_index);
		FUNC4(chip);
		FUNC0(chip);
		FUNC3(chip, PROX_BELOW_THRESHOLD);
		FUNC2(chip, BH1770_ENABLE);
		FUNC5(chip->client,
					BH1770_PS_CONTROL, BH1770_STANDALONE);
	} else {
		chip->prox_data = 0;
		FUNC1(chip, chip->lux_rate_index);
		FUNC2(chip, BH1770_DISABLE);
		FUNC5(chip->client,
					BH1770_PS_CONTROL, BH1770_STANDBY);
	}
	return 0;
}