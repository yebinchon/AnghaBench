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
typedef  int u32 ;
struct pci_bus {int dummy; } ;
struct cxl_afu {int dummy; } ;
struct TYPE_2__ {int (* afu_cr_write8 ) (struct cxl_afu*,int,int,int) ;int (* afu_cr_write16 ) (struct cxl_afu*,int,int,int) ;int (* afu_cr_write32 ) (struct cxl_afu*,int,int,int) ;} ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SET_FAILED ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxl_afu*) ; 
 TYPE_1__* cxl_ops ; 
 int FUNC3 (struct pci_bus*,unsigned int,struct cxl_afu*,int*) ; 
 struct cxl_afu* FUNC4 (struct pci_bus*) ; 
 int FUNC5 (struct cxl_afu*,int,int,int) ; 
 int FUNC6 (struct cxl_afu*,int,int,int) ; 
 int FUNC7 (struct cxl_afu*,int,int,int) ; 

__attribute__((used)) static int FUNC8(struct pci_bus *bus, unsigned int devfn,
				 int offset, int len, u32 val)
{
	int rc, record;
	struct cxl_afu *afu;

	afu = FUNC4(bus);
	/* Grab a reader lock on afu. */
	if (afu == NULL || !FUNC1(afu))
		return PCIBIOS_DEVICE_NOT_FOUND;

	rc = FUNC3(bus, devfn, afu, &record);
	if (rc)
		goto out;

	switch (len) {
	case 1:
		rc = cxl_ops->afu_cr_write8(afu, record, offset, val & 0xff);
		break;
	case 2:
		rc = cxl_ops->afu_cr_write16(afu, record, offset, val & 0xffff);
		break;
	case 4:
		rc = cxl_ops->afu_cr_write32(afu, record, offset, val);
		break;
	default:
		FUNC0(1);
	}

out:
	FUNC2(afu);
	return rc ? PCIBIOS_SET_FAILED : PCIBIOS_SUCCESSFUL;
}