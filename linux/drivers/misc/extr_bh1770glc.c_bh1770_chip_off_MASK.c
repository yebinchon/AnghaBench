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
struct bh1770_chip {int /*<<< orphan*/  regs; int /*<<< orphan*/  client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BH1770_ALS_CONTROL ; 
 int /*<<< orphan*/  BH1770_DISABLE ; 
 int /*<<< orphan*/  BH1770_INTERRUPT ; 
 int /*<<< orphan*/  BH1770_PS_CONTROL ; 
 int /*<<< orphan*/  BH1770_STANDBY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bh1770_chip *chip)
{
	FUNC1(chip->client,
					BH1770_INTERRUPT, BH1770_DISABLE);
	FUNC1(chip->client,
				BH1770_ALS_CONTROL, BH1770_STANDBY);
	FUNC1(chip->client,
				BH1770_PS_CONTROL, BH1770_STANDBY);
	FUNC2(FUNC0(chip->regs), chip->regs);
}