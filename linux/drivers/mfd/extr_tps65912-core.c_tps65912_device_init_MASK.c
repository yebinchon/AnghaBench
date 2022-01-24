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
struct tps65912 {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tps65912_cells ; 
 int /*<<< orphan*/  tps65912_irq_chip ; 

int FUNC5(struct tps65912 *tps)
{
	int ret;

	ret = FUNC2(tps->regmap, tps->irq, IRQF_ONESHOT, 0,
				  &tps65912_irq_chip, &tps->irq_data);
	if (ret)
		return ret;

	ret = FUNC1(tps->dev, PLATFORM_DEVID_AUTO, tps65912_cells,
			      FUNC0(tps65912_cells), NULL, 0,
			      FUNC4(tps->irq_data));
	if (ret) {
		FUNC3(tps->irq, tps->irq_data);
		return ret;
	}

	return 0;
}