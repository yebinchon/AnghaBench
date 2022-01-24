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
struct softing {int /*<<< orphan*/  dpram; int /*<<< orphan*/ ** net; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct softing*) ; 
 struct softing* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct softing*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  softing_pdev_group ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct softing *card = FUNC3(pdev);
	int j;

	/* first, disable card*/
	FUNC4(card);

	for (j = 0; j < FUNC0(card->net); ++j) {
		if (!card->net[j])
			continue;
		FUNC5(card->net[j]);
		card->net[j] = NULL;
	}
	FUNC6(&pdev->dev.kobj, &softing_pdev_group);

	FUNC1(card->dpram);
	FUNC2(card);
	return 0;
}