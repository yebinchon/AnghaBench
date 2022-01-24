#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct brcmf_sdio_dev {TYPE_2__* func2; int /*<<< orphan*/  bus; TYPE_2__* func1; } ;
struct TYPE_7__ {TYPE_1__* card; int /*<<< orphan*/  enable_timeout; } ;
struct TYPE_6__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  SDIO_FUNC1_BLOCKSIZE ; 
 int /*<<< orphan*/  SDIO_FUNC2_BLOCKSIZE ; 
 int /*<<< orphan*/  SDIO_WAIT_F2RDY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_sdio_dev*) ; 
 int FUNC2 (struct brcmf_sdio_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_sdio_dev*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct brcmf_sdio_dev *sdiodev)
{
	int ret = 0;

	FUNC5(sdiodev->func1);

	ret = FUNC8(sdiodev->func1, SDIO_FUNC1_BLOCKSIZE);
	if (ret) {
		FUNC0("Failed to set F1 blocksize\n");
		FUNC7(sdiodev->func1);
		goto out;
	}
	ret = FUNC8(sdiodev->func2, SDIO_FUNC2_BLOCKSIZE);
	if (ret) {
		FUNC0("Failed to set F2 blocksize\n");
		FUNC7(sdiodev->func1);
		goto out;
	}

	/* increase F2 timeout */
	sdiodev->func2->enable_timeout = SDIO_WAIT_F2RDY;

	/* Enable Function 1 */
	ret = FUNC6(sdiodev->func1);
	FUNC7(sdiodev->func1);
	if (ret) {
		FUNC0("Failed to enable F1: err=%d\n", ret);
		goto out;
	}

	ret = FUNC2(sdiodev);
	if (ret)
		goto out;

	/* try to attach to the target device */
	sdiodev->bus = FUNC1(sdiodev);
	if (!sdiodev->bus) {
		ret = -ENODEV;
		goto out;
	}
	FUNC3(sdiodev->func2->card->host);
out:
	if (ret)
		FUNC4(sdiodev);

	return ret;
}