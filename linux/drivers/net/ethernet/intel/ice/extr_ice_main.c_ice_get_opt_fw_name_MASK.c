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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct ice_pf {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* ICE_DDP_PKG_PATH ; 
 int /*<<< orphan*/  NAME_MAX ; 
 int /*<<< orphan*/  PCI_EXT_CAP_ID_DSN ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char*,char*,int,int,int,int,int,int,int,int) ; 

__attribute__((used)) static char *FUNC5(struct ice_pf *pf)
{
	/* Optional firmware name same as default with additional dash
	 * followed by a EUI-64 identifier (PCIe Device Serial Number)
	 */
	struct pci_dev *pdev = pf->pdev;
	char *opt_fw_filename = NULL;
	u32 dword;
	u8 dsn[8];
	int pos;

	/* Determine the name of the optional file using the DSN (two
	 * dwords following the start of the DSN Capability).
	 */
	pos = FUNC1(pdev, PCI_EXT_CAP_ID_DSN);
	if (pos) {
		opt_fw_filename = FUNC0(NAME_MAX, GFP_KERNEL);
		if (!opt_fw_filename)
			return NULL;

		FUNC2(pdev, pos + 4, &dword);
		FUNC3(dword, &dsn[0]);
		FUNC2(pdev, pos + 8, &dword);
		FUNC3(dword, &dsn[4]);
		FUNC4(opt_fw_filename, NAME_MAX,
			 "%sice-%02x%02x%02x%02x%02x%02x%02x%02x.pkg",
			 ICE_DDP_PKG_PATH,
			 dsn[7], dsn[6], dsn[5], dsn[4],
			 dsn[3], dsn[2], dsn[1], dsn[0]);
	}

	return opt_fw_filename;
}