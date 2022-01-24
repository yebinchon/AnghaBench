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
struct netxen_adapter {int flags; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int NETXEN_NIC_MSIX_ENABLED ; 
 int NETXEN_NIC_MSI_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct netxen_adapter *adapter)
{
	if (adapter->flags & NETXEN_NIC_MSIX_ENABLED)
		FUNC1(adapter->pdev);
	if (adapter->flags & NETXEN_NIC_MSI_ENABLED)
		FUNC0(adapter->pdev);
}