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
struct TYPE_2__ {int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {TYPE_1__ ahw; } ;

/* Variables and functions */
 int EIO ; 
 int NETXEN_BDINFO_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  NETXEN_ROMUSB_GLB_PEGTUNE_DONE ; 
 int /*<<< orphan*/  NETXEN_ROMUSB_GLB_SW_RESET ; 
 int FUNC2 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netxen_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct netxen_adapter *adapter, int first_boot)
{
	u32 val, timeout;

	if (first_boot == 0x55555555) {
		/* This is the first boot after power up */
		FUNC3(adapter, FUNC0(0x1fc), NETXEN_BDINFO_MAGIC);

		if (!FUNC4(adapter->ahw.revision_id))
			return 0;

		/* PCI bus master workaround */
		first_boot = FUNC2(adapter, FUNC1(0x4));
		if (!(first_boot & 0x4)) {
			first_boot |= 0x4;
			FUNC3(adapter, FUNC1(0x4), first_boot);
			FUNC2(adapter, FUNC1(0x4));
		}

		/* This is the first boot after power up */
		first_boot = FUNC2(adapter, NETXEN_ROMUSB_GLB_SW_RESET);
		if (first_boot != 0x80000f) {
			/* clear the register for future unloads/loads */
			FUNC3(adapter, FUNC0(0x1fc), 0);
			return -EIO;
		}

		/* Start P2 boot loader */
		val = FUNC2(adapter, NETXEN_ROMUSB_GLB_PEGTUNE_DONE);
		FUNC3(adapter, NETXEN_ROMUSB_GLB_PEGTUNE_DONE, val | 0x1);
		timeout = 0;
		do {
			FUNC5(1);
			val = FUNC2(adapter, FUNC0(0x1fc));

			if (++timeout > 5000)
				return -EIO;

		} while (val == NETXEN_BDINFO_MAGIC);
	}
	return 0;
}