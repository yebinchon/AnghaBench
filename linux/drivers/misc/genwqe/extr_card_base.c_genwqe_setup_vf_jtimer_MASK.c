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
typedef  int u64 ;
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct genwqe_dev {unsigned long* vf_jobtimeout_msec; struct pci_dev* pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IO_SLC_VF_APPJOB_TIMEOUT ; 
 int FUNC0 (struct genwqe_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct genwqe_dev*,int /*<<< orphan*/ ,int,unsigned int) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static bool FUNC4(struct genwqe_dev *cd)
{
	struct pci_dev *pci_dev = cd->pci_dev;
	unsigned int vf;
	u32 T = FUNC0(cd);
	u64 x;
	int totalvfs;

	totalvfs = FUNC3(pci_dev);
	if (totalvfs <= 0)
		return false;

	for (vf = 0; vf < totalvfs; vf++) {

		if (cd->vf_jobtimeout_msec[vf] == 0)
			continue;

		x = FUNC2(cd->vf_jobtimeout_msec[vf] *
			  16000000000uL/(T * 15)) - 10;

		FUNC1(cd, IO_SLC_VF_APPJOB_TIMEOUT,
				  0xff00 | (x & 0xff), vf + 1);
	}
	return true;
}