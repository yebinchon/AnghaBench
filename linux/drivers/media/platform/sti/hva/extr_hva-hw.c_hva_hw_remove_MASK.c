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
struct hva_dev {int /*<<< orphan*/  irq_err; int /*<<< orphan*/  irq_its; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (struct hva_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

void FUNC4(struct hva_dev *hva)
{
	struct device *dev = FUNC1(hva);

	FUNC0(hva->irq_its);
	FUNC0(hva->irq_err);

	FUNC3(dev);
	FUNC2(dev);
}