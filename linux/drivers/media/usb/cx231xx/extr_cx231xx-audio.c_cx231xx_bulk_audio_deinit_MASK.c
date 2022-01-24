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
struct TYPE_2__ {int /*<<< orphan*/ ** transfer_buffer; int /*<<< orphan*/ ** urb; } ;
struct cx231xx {TYPE_1__ adev; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int CX231XX_AUDIO_BUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct cx231xx *dev)
{
	int i;

	FUNC0(dev->dev, "Stopping bulk\n");

	for (i = 0; i < CX231XX_AUDIO_BUFS; i++) {
		if (dev->adev.urb[i]) {
			if (!FUNC1())
				FUNC4(dev->adev.urb[i]);
			else
				FUNC5(dev->adev.urb[i]);

			FUNC3(dev->adev.urb[i]);
			dev->adev.urb[i] = NULL;

			FUNC2(dev->adev.transfer_buffer[i]);
			dev->adev.transfer_buffer[i] = NULL;
		}
	}

	return 0;
}