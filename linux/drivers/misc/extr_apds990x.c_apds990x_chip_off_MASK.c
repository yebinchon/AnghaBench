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
struct apds990x_chip {int /*<<< orphan*/  regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  APDS990X_ENABLE ; 
 int /*<<< orphan*/  APDS990X_EN_DISABLE_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct apds990x_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct apds990x_chip *chip)
{
	FUNC1(chip, APDS990X_ENABLE, APDS990X_EN_DISABLE_ALL);
	FUNC2(FUNC0(chip->regs), chip->regs);
	return 0;
}