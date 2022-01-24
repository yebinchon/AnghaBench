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
struct TYPE_2__ {int /*<<< orphan*/  pci_func; int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {int physical_port; TYPE_1__ ahw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRB_XG_STATE ; 
 int /*<<< orphan*/  CRB_XG_STATE_P3 ; 
 int FUNC0 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int XG_LINK_UP ; 
 int XG_LINK_UP_P3 ; 
 int /*<<< orphan*/  FUNC3 (struct netxen_adapter*,int) ; 

__attribute__((used)) static void FUNC4(struct netxen_adapter *adapter)
{
	u32 val, port, linkup;

	port = adapter->physical_port;

	if (FUNC1(adapter->ahw.revision_id)) {
		val = FUNC0(adapter, CRB_XG_STATE_P3);
		val = FUNC2(adapter->ahw.pci_func, val);
		linkup = (val == XG_LINK_UP_P3);
	} else {
		val = FUNC0(adapter, CRB_XG_STATE);
		val = (val >> port*8) & 0xff;
		linkup = (val == XG_LINK_UP);
	}

	FUNC3(adapter, linkup);
}