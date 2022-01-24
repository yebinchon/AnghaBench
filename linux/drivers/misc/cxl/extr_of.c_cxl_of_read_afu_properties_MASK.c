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
typedef  int u32 ;
typedef  int u16 ;
struct device_node {int dummy; } ;
struct cxl_afu {scalar_t__ psn_phys; int psa; int max_procs_virtualised; int irqs_max; int pp_irqs; int crs_num; int pp_psa; int serr_hwirq; TYPE_2__* adapter; TYPE_1__* guest; scalar_t__ crs_offset; int /*<<< orphan*/  crs_len; scalar_t__ eb_offset; int /*<<< orphan*/  eb_len; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_6__ {int (* afu_cr_read16 ) (struct cxl_afu*,int,int /*<<< orphan*/ ,int*) ;int (* afu_cr_read32 ) (struct cxl_afu*,int,int /*<<< orphan*/ ,int*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  ps_size; } ;
struct TYPE_4__ {int max_ints; int handle; int /*<<< orphan*/  p2n_size; int /*<<< orphan*/  p2n_phys; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CLASS_REVISION ; 
 int /*<<< orphan*/  PCI_DEVICE_ID ; 
 int /*<<< orphan*/  PCI_VENDOR_ID ; 
 TYPE_3__* cxl_ops ; 
 scalar_t__ cxl_verbose ; 
 int /*<<< orphan*/ * FUNC0 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct device_node*,char*,struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct cxl_afu*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int FUNC9 (struct cxl_afu*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (struct cxl_afu*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC11 (struct cxl_afu*,int,int /*<<< orphan*/ ,int*) ; 

int FUNC12(struct cxl_afu *afu, struct device_node *np)
{
	int i, len, rc;
	char *p;
	const __be32 *prop;
	u16 device_id, vendor_id;
	u32 val = 0, class_code;

	/* Properties are read in the same order as listed in PAPR */

	if (cxl_verbose) {
		FUNC2("Dump of the 'ibm,coherent-platform-function' node properties:\n");

		prop = FUNC0(np, "compatible", &len);
		i = 0;
		while (i < len) {
			p = (char *) prop + i;
			FUNC2("compatible: %s\n", p);
			i += FUNC8(p) + 1;
		}
		FUNC6(np, "name");
	}

	rc = FUNC3(np, "reg", afu);
	if (rc)
		return rc;

	rc = FUNC3(np, "assigned-addresses", afu);
	if (rc)
		return rc;

	if (afu->psn_phys == 0)
		afu->psa = false;
	else
		afu->psa = true;

	if (cxl_verbose) {
		FUNC6(np, "ibm,loc-code");
		FUNC6(np, "device_type");
	}

	FUNC5(np, "ibm,#processes", &afu->max_procs_virtualised);

	if (cxl_verbose) {
		FUNC5(np, "ibm,scratchpad-size", &val);
		FUNC5(np, "ibm,programmable", &val);
		FUNC6(np, "ibm,phandle");
		FUNC7(NULL, afu);
	}

	FUNC5(np, "ibm,max-ints-per-process", &afu->guest->max_ints);
	afu->irqs_max = afu->guest->max_ints;

	prop = FUNC5(np, "ibm,min-ints-per-process", &afu->pp_irqs);
	if (prop) {
		/* One extra interrupt for the PSL interrupt is already
		 * included. Remove it now to keep only AFU interrupts and
		 * match the native case.
		 */
		afu->pp_irqs--;
	}

	if (cxl_verbose) {
		FUNC5(np, "ibm,max-ints", &val);
		FUNC5(np, "ibm,vpd-size", &val);
	}

	FUNC4(np, "ibm,error-buffer-size", &afu->eb_len);
	afu->eb_offset = 0;

	if (cxl_verbose)
		FUNC5(np, "ibm,config-record-type", &val);

	FUNC4(np, "ibm,config-record-size", &afu->crs_len);
	afu->crs_offset = 0;

	FUNC5(np, "ibm,#config-records", &afu->crs_num);

	if (cxl_verbose) {
		for (i = 0; i < afu->crs_num; i++) {
			rc = cxl_ops->afu_cr_read16(afu, i, PCI_DEVICE_ID,
						&device_id);
			if (!rc)
				FUNC2("record %d - device-id: %#x\n",
					i, device_id);
			rc = cxl_ops->afu_cr_read16(afu, i, PCI_VENDOR_ID,
						&vendor_id);
			if (!rc)
				FUNC2("record %d - vendor-id: %#x\n",
					i, vendor_id);
			rc = cxl_ops->afu_cr_read32(afu, i, PCI_CLASS_REVISION,
						&class_code);
			if (!rc) {
				class_code >>= 8;
				FUNC2("record %d - class-code: %#x\n",
					i, class_code);
			}
		}

		FUNC5(np, "ibm,function-number", &val);
		FUNC5(np, "ibm,privileged-function", &val);
		FUNC5(np, "vendor-id", &val);
		FUNC5(np, "device-id", &val);
		FUNC5(np, "revision-id", &val);
		FUNC5(np, "class-code", &val);
		FUNC5(np, "subsystem-vendor-id", &val);
		FUNC5(np, "subsystem-id", &val);
	}
	/*
	 * if "ibm,process-mmio" doesn't exist then per-process mmio is
	 * not supported
	 */
	val = 0;
	prop = FUNC5(np, "ibm,process-mmio", &val);
	if (prop && val == 1)
		afu->pp_psa = true;
	else
		afu->pp_psa = false;

	if (cxl_verbose) {
		FUNC5(np, "ibm,supports-aur", &val);
		FUNC5(np, "ibm,supports-csrp", &val);
		FUNC5(np, "ibm,supports-prr", &val);
	}

	prop = FUNC5(np, "ibm,function-error-interrupt", &val);
	if (prop)
		afu->serr_hwirq = val;

	FUNC1("AFU handle: %#llx\n", afu->guest->handle);
	FUNC1("p2n_phys: %#llx (size %#llx)\n",
		afu->guest->p2n_phys, afu->guest->p2n_size);
	FUNC1("psn_phys: %#llx (size %#llx)\n",
		afu->psn_phys, afu->adapter->ps_size);
	FUNC1("Max number of processes virtualised=%i\n",
		afu->max_procs_virtualised);
	FUNC1("Per-process irqs min=%i, max=%i\n", afu->pp_irqs,
		 afu->irqs_max);
	FUNC1("Slice error interrupt=%#lx\n", afu->serr_hwirq);

	return 0;
}