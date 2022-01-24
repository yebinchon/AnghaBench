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
struct camif_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/ ** clock; } ;

/* Variables and functions */
 int CLK_MAX_NUM ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct camif_dev*) ; 
 int /*<<< orphan*/ * camif_clocks ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct camif_dev *camif)
{
	int ret, i;

	for (i = 1; i < CLK_MAX_NUM; i++)
		camif->clock[i] = FUNC0(-EINVAL);

	for (i = 0; i < CLK_MAX_NUM; i++) {
		camif->clock[i] = FUNC4(camif->dev, camif_clocks[i]);
		if (FUNC1(camif->clock[i])) {
			ret = FUNC2(camif->clock[i]);
			goto err;
		}
		ret = FUNC5(camif->clock[i]);
		if (ret < 0) {
			FUNC6(camif->clock[i]);
			camif->clock[i] = NULL;
			goto err;
		}
	}
	return 0;
err:
	FUNC3(camif);
	FUNC7(camif->dev, "failed to get clock: %s\n",
		camif_clocks[i]);
	return ret;
}