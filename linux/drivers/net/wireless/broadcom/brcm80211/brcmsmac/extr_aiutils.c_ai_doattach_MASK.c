#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct si_pub {int /*<<< orphan*/  boardtype; int /*<<< orphan*/  boardvendor; int /*<<< orphan*/  chippkg; int /*<<< orphan*/  chiprev; int /*<<< orphan*/  chip; } ;
struct si_info {int /*<<< orphan*/  pcibus; struct bcma_bus* icbus; struct si_pub pub; } ;
struct bcma_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  type; int /*<<< orphan*/  vendor; } ;
struct TYPE_5__ {int /*<<< orphan*/  pkg; int /*<<< orphan*/  rev; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {struct bcma_device* core; } ;
struct bcma_bus {TYPE_3__ boardinfo; TYPE_2__ chipinfo; TYPE_1__ drv_cc; int /*<<< orphan*/  host_pci; } ;

/* Variables and functions */
 int CC_CAP_PMU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct si_info*,struct bcma_device*) ; 
 int FUNC2 (struct si_pub*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpiopulldown ; 
 int /*<<< orphan*/  gpiopullup ; 
 int /*<<< orphan*/  FUNC4 (struct si_pub*) ; 

__attribute__((used)) static struct si_info *FUNC5(struct si_info *sii,
				   struct bcma_bus *pbus)
{
	struct si_pub *sih = &sii->pub;
	struct bcma_device *cc;

	sii->icbus = pbus;
	sii->pcibus = pbus->host_pci;

	/* switch to Chipcommon core */
	cc = pbus->drv_cc.core;

	sih->chip = pbus->chipinfo.id;
	sih->chiprev = pbus->chipinfo.rev;
	sih->chippkg = pbus->chipinfo.pkg;
	sih->boardvendor = pbus->boardinfo.vendor;
	sih->boardtype = pbus->boardinfo.type;

	if (!FUNC1(sii, cc))
		goto exit;

	/* === NVRAM, clock is ready === */
	FUNC3(cc, FUNC0(gpiopullup), 0);
	FUNC3(cc, FUNC0(gpiopulldown), 0);

	/* PMU specific initializations */
	if (FUNC2(sih) & CC_CAP_PMU) {
		(void)FUNC4(sih);
	}

	return sii;

 exit:

	return NULL;
}