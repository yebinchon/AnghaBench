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
struct sh_flctl {int qos_request; TYPE_1__* pdev; int /*<<< orphan*/  holden; int /*<<< orphan*/  pm_qos; int /*<<< orphan*/  flcmncr_base; } ;
struct nand_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CE0_ENABLE ; 
 int /*<<< orphan*/  DEV_PM_QOS_RESUME_LATENCY ; 
 int /*<<< orphan*/  FUNC1 (struct sh_flctl*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_flctl*) ; 
 int /*<<< orphan*/  HOLDEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sh_flctl* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nand_chip*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct nand_chip *chip, int chipnr)
{
	struct sh_flctl *flctl = FUNC6(FUNC7(chip));
	int ret;

	switch (chipnr) {
	case -1:
		flctl->flcmncr_base &= ~CE0_ENABLE;

		FUNC8(&flctl->pdev->dev);
		FUNC10(flctl->flcmncr_base, FUNC1(flctl));

		if (flctl->qos_request) {
			FUNC5(&flctl->pm_qos);
			flctl->qos_request = 0;
		}

		FUNC9(&flctl->pdev->dev);
		break;
	case 0:
		flctl->flcmncr_base |= CE0_ENABLE;

		if (!flctl->qos_request) {
			ret = FUNC4(&flctl->pdev->dev,
							&flctl->pm_qos,
							DEV_PM_QOS_RESUME_LATENCY,
							100);
			if (ret < 0)
				FUNC3(&flctl->pdev->dev,
					"PM QoS request failed: %d\n", ret);
			flctl->qos_request = 1;
		}

		if (flctl->holden) {
			FUNC8(&flctl->pdev->dev);
			FUNC10(HOLDEN, FUNC2(flctl));
			FUNC9(&flctl->pdev->dev);
		}
		break;
	default:
		FUNC0();
	}
}