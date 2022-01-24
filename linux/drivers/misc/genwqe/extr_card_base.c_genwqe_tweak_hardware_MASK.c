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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct genwqe_dev {int slu_unitcfg; int /*<<< orphan*/  app_unitcfg; struct pci_dev* pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_APP_ERR_ACT_MASK ; 
 int /*<<< orphan*/  IO_APP_SEC_LEM_DEBUG_OVR ; 
 int /*<<< orphan*/  FUNC0 (struct genwqe_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct genwqe_dev *cd)
{
	struct pci_dev *pci_dev = cd->pci_dev;

	/* Mask FIRs for development images */
	if (((cd->slu_unitcfg & 0xFFFF0ull) >= 0x32000ull) &&
	    ((cd->slu_unitcfg & 0xFFFF0ull) <= 0x33250ull)) {
		FUNC1(&pci_dev->dev,
			 "FIRs masked due to bitstream %016llx.%016llx\n",
			 cd->slu_unitcfg, cd->app_unitcfg);

		FUNC0(cd, IO_APP_SEC_LEM_DEBUG_OVR,
				0xFFFFFFFFFFFFFFFFull);

		FUNC0(cd, IO_APP_ERR_ACT_MASK,
				0x0000000000000000ull);
	}
}