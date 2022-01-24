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
struct platform_device {int dummy; } ;
struct mx25_tsadc {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mx25_tsadc* FUNC2 (struct platform_device*) ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct mx25_tsadc *tsadc = FUNC2(pdev);
	int irq = FUNC3(pdev, 0);

	if (irq) {
		FUNC1(irq, NULL, NULL);
		FUNC0(tsadc->domain);
	}

	return 0;
}