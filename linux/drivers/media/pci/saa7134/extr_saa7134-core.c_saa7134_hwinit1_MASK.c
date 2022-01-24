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
struct saa7134_dev {int /*<<< orphan*/  slock; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAA7134_IRQ1 ; 
 int /*<<< orphan*/  SAA7134_IRQ2 ; 
 int /*<<< orphan*/  SAA7134_IRQ_REPORT ; 
 scalar_t__ FUNC0 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct saa7134_dev*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct saa7134_dev *dev)
{
	FUNC1("hwinit1\n");

	FUNC10(SAA7134_IRQ1, 0);
	FUNC10(SAA7134_IRQ2, 0);

	/* Clear any stale IRQ reports */
	FUNC10(SAA7134_IRQ_REPORT, FUNC9(SAA7134_IRQ_REPORT));

	FUNC2(&dev->lock);
	FUNC11(&dev->slock);

	FUNC5(dev,"pre-init");
	FUNC8(dev);
	FUNC7(dev);
	if (FUNC0(dev))
		FUNC6(dev);
	FUNC4(dev);

	FUNC3(dev);

	return 0;
}