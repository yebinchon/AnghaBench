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
typedef  int u64 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct cxl {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL9_CTCCFG ; 
 int /*<<< orphan*/  CXL_PSL9_TRACECFG ; 
 int CXL_PSL9_TRACEID_MAX ; 
 int CXL_PSL9_TRACESTATE_FIN ; 
 int FUNC0 (struct cxl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cxl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct cxl *adapter)
{
	int traceid;
	u64 trace_state, trace_mask;
	struct pci_dev *dev = FUNC3(adapter->dev.parent);

	/* read each tracearray state and issue mmio to stop them is needed */
	for (traceid = 0; traceid <= CXL_PSL9_TRACEID_MAX; ++traceid) {
		trace_state = FUNC0(adapter, CXL_PSL9_CTCCFG);
		trace_mask = (0x3ULL << (62 - traceid * 2));
		trace_state = (trace_state & trace_mask) >> (62 - traceid * 2);
		FUNC2(&dev->dev, "cxl: Traceid-%d trace_state=0x%0llX\n",
			traceid, trace_state);

		/* issue mmio if the trace array isn't in FIN state */
		if (trace_state != CXL_PSL9_TRACESTATE_FIN)
			FUNC1(adapter, CXL_PSL9_TRACECFG,
				     0x8400000000000000ULL | traceid);
	}
}