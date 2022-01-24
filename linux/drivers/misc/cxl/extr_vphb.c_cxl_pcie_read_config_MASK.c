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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct pci_bus {int dummy; } ;
struct cxl_afu {int dummy; } ;
struct TYPE_2__ {int (* afu_cr_read8 ) (struct cxl_afu*,int,int,int /*<<< orphan*/ *) ;int (* afu_cr_read16 ) (struct cxl_afu*,int,int,int /*<<< orphan*/ *) ;int (* afu_cr_read32 ) (struct cxl_afu*,int,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxl_afu*) ; 
 TYPE_1__* cxl_ops ; 
 int FUNC3 (struct pci_bus*,unsigned int,struct cxl_afu*,int*) ; 
 struct cxl_afu* FUNC4 (struct pci_bus*) ; 
 int FUNC5 (struct cxl_afu*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct cxl_afu*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct cxl_afu*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct pci_bus *bus, unsigned int devfn,
				int offset, int len, u32 *val)
{
	int rc, record;
	struct cxl_afu *afu;
	u8 val8;
	u16 val16;
	u32 val32;

	afu = FUNC4(bus);
	/* Grab a reader lock on afu. */
	if (afu == NULL || !FUNC1(afu))
		return PCIBIOS_DEVICE_NOT_FOUND;

	rc = FUNC3(bus, devfn, afu, &record);
	if (rc)
		goto out;

	switch (len) {
	case 1:
		rc = cxl_ops->afu_cr_read8(afu, record, offset,	&val8);
		*val = val8;
		break;
	case 2:
		rc = cxl_ops->afu_cr_read16(afu, record, offset, &val16);
		*val = val16;
		break;
	case 4:
		rc = cxl_ops->afu_cr_read32(afu, record, offset, &val32);
		*val = val32;
		break;
	default:
		FUNC0(1);
	}

out:
	FUNC2(afu);
	return rc ? PCIBIOS_DEVICE_NOT_FOUND : PCIBIOS_SUCCESSFUL;
}