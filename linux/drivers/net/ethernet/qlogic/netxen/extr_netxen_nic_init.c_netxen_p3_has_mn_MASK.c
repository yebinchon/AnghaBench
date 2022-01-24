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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {TYPE_1__ ahw; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NX_FW_VERSION_OFFSET ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NX_PEG_TUNE_CAPABILITY ; 
 scalar_t__ NX_PEG_TUNE_MN_PRESENT ; 
 int /*<<< orphan*/  FUNC4 (struct netxen_adapter*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC5(struct netxen_adapter *adapter)
{
	u32 capability, flashed_ver;
	capability = 0;

	/* NX2031 always had MN */
	if (FUNC3(adapter->ahw.revision_id))
		return 1;

	FUNC4(adapter,
			NX_FW_VERSION_OFFSET, (int *)&flashed_ver);
	flashed_ver = FUNC0(flashed_ver);

	if (flashed_ver >= FUNC1(4, 0, 220)) {

		capability = FUNC2(adapter, NX_PEG_TUNE_CAPABILITY);
		if (capability & NX_PEG_TUNE_MN_PRESENT)
			return 1;
	}
	return 0;
}