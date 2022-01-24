#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct brcmf_sdio_dev {TYPE_3__* func1; scalar_t__ sbwad; int /*<<< orphan*/  sgtable; TYPE_3__* func2; int /*<<< orphan*/ * bus; int /*<<< orphan*/  state; } ;
struct TYPE_8__ {TYPE_2__* card; } ;
struct TYPE_7__ {TYPE_1__* host; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_SDIOD_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_sdio_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct brcmf_sdio_dev *sdiodev)
{
	sdiodev->state = BRCMF_SDIOD_DOWN;
	if (sdiodev->bus) {
		FUNC0(sdiodev->bus);
		sdiodev->bus = NULL;
	}

	FUNC1(sdiodev);

	/* Disable Function 2 */
	FUNC3(sdiodev->func2);
	FUNC4(sdiodev->func2);
	FUNC5(sdiodev->func2);

	/* Disable Function 1 */
	FUNC3(sdiodev->func1);
	FUNC4(sdiodev->func1);
	FUNC5(sdiodev->func1);

	FUNC6(&sdiodev->sgtable);
	sdiodev->sbwad = 0;

	FUNC2(sdiodev->func1->card->host->parent);
	return 0;
}