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
struct brcmf_sdio {TYPE_1__* sdiodev; } ;
struct TYPE_2__ {int /*<<< orphan*/  func1; } ;

/* Variables and functions */
 int FUNC0 (struct brcmf_sdio*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct brcmf_sdio *bus, bool sleep)
{
	int ret;

	FUNC1(bus->sdiodev->func1);
	ret = FUNC0(bus, sleep, false);
	FUNC2(bus->sdiodev->func1);

	return ret;
}