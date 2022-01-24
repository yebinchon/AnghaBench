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
typedef  scalar_t__ u32 ;
struct brcmf_sdio_dev {TYPE_1__* bus; } ;
struct brcmf_core {scalar_t__ base; } ;
struct brcmf_chip {int dummy; } ;
typedef  int /*<<< orphan*/  rstvec ;
struct TYPE_2__ {struct brcmf_core* sdio_core; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_sdio_dev*,int,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_sdio_dev*,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intstatus ; 

__attribute__((used)) static void FUNC3(void *ctx, struct brcmf_chip *chip,
					u32 rstvec)
{
	struct brcmf_sdio_dev *sdiodev = ctx;
	struct brcmf_core *core = sdiodev->bus->sdio_core;
	u32 reg_addr;

	/* clear all interrupts */
	reg_addr = core->base + FUNC0(intstatus);
	FUNC2(sdiodev, reg_addr, 0xFFFFFFFF, NULL);

	if (rstvec)
		/* Write reset vector to address 0 */
		FUNC1(sdiodev, true, 0, (void *)&rstvec,
				  sizeof(rstvec));
}