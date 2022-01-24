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
struct adapter {int flags; int /*<<< orphan*/  pdev_dev; } ;

/* Variables and functions */
 int CXGB4_USING_MSI ; 
 int CXGB4_USING_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 scalar_t__ FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 

__attribute__((used)) static void FUNC3(struct adapter *adapter)
{
	/* Hardware/Firmware/etc. Version/Revision IDs */
	FUNC2(adapter);

	/* Software/Hardware configuration */
	FUNC0(adapter->pdev_dev, "Configuration: %sNIC %s, %s capable\n",
		 FUNC1(adapter) ? "R" : "",
		 ((adapter->flags & CXGB4_USING_MSIX) ? "MSI-X" :
		  (adapter->flags & CXGB4_USING_MSI) ? "MSI" : ""),
		 FUNC1(adapter) ? "Offload" : "non-Offload");
}