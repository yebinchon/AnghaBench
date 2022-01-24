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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct cxl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_DSNDCTL ; 
 int /*<<< orphan*/  CXL_PSL_FIR_CNTL ; 
 int /*<<< orphan*/  CXL_PSL_RESLCKTO ; 
 int /*<<< orphan*/  CXL_PSL_SNWRALLOC ; 
 int /*<<< orphan*/  CXL_PSL_TRACE ; 
 int FUNC0 (struct pci_dev*,int*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct cxl *adapter, struct pci_dev *dev)
{
	u64 psl_dsnctl, psl_fircntl;
	u64 chipid;
	u32 phb_index;
	u64 capp_unit_id;
	int rc;

	rc = FUNC0(dev, &chipid, &phb_index, &capp_unit_id);
	if (rc)
		return rc;

	psl_dsnctl = 0x0000900000000000ULL; /* pteupd ttype, scdone */
	psl_dsnctl |= (0x2ULL << (63-38)); /* MMIO hang pulse: 256 us */
	/* Tell PSL where to route data to */
	psl_dsnctl |= (chipid << (63-5));
	psl_dsnctl |= (capp_unit_id << (63-13));

	FUNC1(adapter, CXL_PSL_DSNDCTL, psl_dsnctl);
	FUNC1(adapter, CXL_PSL_RESLCKTO, 0x20000000200ULL);
	/* snoop write mask */
	FUNC1(adapter, CXL_PSL_SNWRALLOC, 0x00000000FFFFFFFFULL);
	/* set fir_cntl to recommended value for production env */
	psl_fircntl = (0x2ULL << (63-3)); /* ce_report */
	psl_fircntl |= (0x1ULL << (63-6)); /* FIR_report */
	psl_fircntl |= 0x1ULL; /* ce_thresh */
	FUNC1(adapter, CXL_PSL_FIR_CNTL, psl_fircntl);
	/* for debugging with trace arrays */
	FUNC1(adapter, CXL_PSL_TRACE, 0x0000FF7C00000000ULL);

	return 0;
}