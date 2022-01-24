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
struct TYPE_2__ {int /*<<< orphan*/  f1regdata; } ;
struct brcmf_sdio {unsigned long hostintmask; int /*<<< orphan*/  intstatus; TYPE_1__ sdcnt; int /*<<< orphan*/  sdiodev; int /*<<< orphan*/  fcstate; struct brcmf_core* sdio_core; } ;
struct brcmf_core {scalar_t__ base; } ;

/* Variables and functions */
 unsigned long I_HMB_FC_STATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned long,int*) ; 
 int /*<<< orphan*/  intstatus ; 

__attribute__((used)) static int FUNC5(struct brcmf_sdio *bus)
{
	struct brcmf_core *core = bus->sdio_core;
	u32 addr;
	unsigned long val;
	int ret;

	addr = core->base + FUNC0(intstatus);

	val = FUNC3(bus->sdiodev, addr, &ret);
	bus->sdcnt.f1regdata++;
	if (ret != 0)
		return ret;

	val &= bus->hostintmask;
	FUNC2(&bus->fcstate, !!(val & I_HMB_FC_STATE));

	/* Clear interrupts */
	if (val) {
		FUNC4(bus->sdiodev, addr, val, &ret);
		bus->sdcnt.f1regdata++;
		FUNC1(val, &bus->intstatus);
	}

	return ret;
}