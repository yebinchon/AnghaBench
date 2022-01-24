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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  revision_id; } ;
struct netxen_adapter {scalar_t__ fw_type; scalar_t__ fw; scalar_t__ need_fw_reset; TYPE_1__ ahw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRB_CMDPEG_STATE ; 
 int EINTR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NETXEN_FW_VERSION_MAJOR ; 
 int /*<<< orphan*/  NETXEN_FW_VERSION_MINOR ; 
 int /*<<< orphan*/  NETXEN_FW_VERSION_SUB ; 
 int /*<<< orphan*/  NETXEN_MIU_MN_CONTROL ; 
 int /*<<< orphan*/  NETXEN_PEG_ALIVE_COUNTER ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct netxen_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netxen_adapter*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ NX_P3_CT_ROMIMAGE ; 
 scalar_t__ NX_P3_MN_ROMIMAGE ; 
 scalar_t__ NX_UNIFIED_ROMIMAGE ; 
 scalar_t__ PHAN_INITIALIZE_FAILED ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (struct netxen_adapter*) ; 

int
FUNC7(struct netxen_adapter *adapter)
{
	u32 count, old_count;
	u32 val, version, major, minor, build;
	int i, timeout;
	u8 fw_type;

	/* NX2031 firmware doesn't support heartbit */
	if (FUNC4(adapter->ahw.revision_id))
		return 1;

	if (adapter->need_fw_reset)
		return 1;

	/* last attempt had failed */
	if (FUNC2(adapter, CRB_CMDPEG_STATE) == PHAN_INITIALIZE_FAILED)
		return 1;

	old_count = FUNC2(adapter, NETXEN_PEG_ALIVE_COUNTER);

	for (i = 0; i < 10; i++) {

		timeout = FUNC5(200);
		if (timeout) {
			FUNC3(adapter, CRB_CMDPEG_STATE,
					PHAN_INITIALIZE_FAILED);
			return -EINTR;
		}

		count = FUNC2(adapter, NETXEN_PEG_ALIVE_COUNTER);
		if (count != old_count)
			break;
	}

	/* firmware is dead */
	if (count == old_count)
		return 1;

	/* check if we have got newer or different file firmware */
	if (adapter->fw) {

		val = FUNC6(adapter);

		version = FUNC0(val);

		major = FUNC2(adapter, NETXEN_FW_VERSION_MAJOR);
		minor = FUNC2(adapter, NETXEN_FW_VERSION_MINOR);
		build = FUNC2(adapter, NETXEN_FW_VERSION_SUB);

		if (version > FUNC1(major, minor, build))
			return 1;

		if (version == FUNC1(major, minor, build) &&
			adapter->fw_type != NX_UNIFIED_ROMIMAGE) {

			val = FUNC2(adapter, NETXEN_MIU_MN_CONTROL);
			fw_type = (val & 0x4) ?
				NX_P3_CT_ROMIMAGE : NX_P3_MN_ROMIMAGE;

			if (adapter->fw_type != fw_type)
				return 1;
		}
	}

	return 0;
}