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
typedef  int u16 ;
struct device {int dummy; } ;
struct be_adapter {scalar_t__ pcicfg; scalar_t__ db; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct be_adapter*) ; 
 int /*<<< orphan*/  BE_ERROR_HW ; 
 int /*<<< orphan*/  BE_ERROR_UE ; 
 scalar_t__ PCICFG_UE_STATUS_HIGH ; 
 scalar_t__ PCICFG_UE_STATUS_HI_MASK ; 
 scalar_t__ PCICFG_UE_STATUS_LOW ; 
 scalar_t__ PCICFG_UE_STATUS_LOW_MASK ; 
 int POST_STAGE_ARMFW_UE ; 
 int POST_STAGE_FAT_LOG_START ; 
 int POST_STAGE_RECOVERABLE_ERR ; 
 scalar_t__ SLIPORT_ERROR1_OFFSET ; 
 scalar_t__ SLIPORT_ERROR2_OFFSET ; 
 int SLIPORT_ERROR_FW_RESET1 ; 
 int SLIPORT_ERROR_FW_RESET2 ; 
 int SLIPORT_STATUS_ERR_MASK ; 
 scalar_t__ SLIPORT_STATUS_OFFSET ; 
 int FUNC1 (struct be_adapter*) ; 
 scalar_t__ FUNC2 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct be_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct be_adapter*) ; 
 int* ue_status_hi_desc ; 
 int* ue_status_low_desc ; 

void FUNC8(struct be_adapter *adapter)
{
	u32 ue_lo = 0, ue_hi = 0, ue_lo_mask = 0, ue_hi_mask = 0;
	u32 sliport_status = 0, sliport_err1 = 0, sliport_err2 = 0;
	struct device *dev = &adapter->pdev->dev;
	u16 val;
	u32 i;

	if (FUNC2(adapter, BE_ERROR_HW))
		return;

	if (FUNC7(adapter)) {
		sliport_status = FUNC6(adapter->db + SLIPORT_STATUS_OFFSET);
		if (sliport_status & SLIPORT_STATUS_ERR_MASK) {
			FUNC3(adapter, BE_ERROR_UE);
			sliport_err1 = FUNC6(adapter->db +
						SLIPORT_ERROR1_OFFSET);
			sliport_err2 = FUNC6(adapter->db +
						SLIPORT_ERROR2_OFFSET);
			/* Do not log error messages if its a FW reset */
			if (sliport_err1 == SLIPORT_ERROR_FW_RESET1 &&
			    sliport_err2 == SLIPORT_ERROR_FW_RESET2) {
				FUNC5(dev, "Reset is in progress\n");
			} else {
				FUNC4(dev, "Error detected in the card\n");
				FUNC4(dev, "ERR: sliport status 0x%x\n",
					sliport_status);
				FUNC4(dev, "ERR: sliport error1 0x%x\n",
					sliport_err1);
				FUNC4(dev, "ERR: sliport error2 0x%x\n",
					sliport_err2);
			}
		}
	} else {
		ue_lo = FUNC6(adapter->pcicfg + PCICFG_UE_STATUS_LOW);
		ue_hi = FUNC6(adapter->pcicfg + PCICFG_UE_STATUS_HIGH);
		ue_lo_mask = FUNC6(adapter->pcicfg +
				      PCICFG_UE_STATUS_LOW_MASK);
		ue_hi_mask = FUNC6(adapter->pcicfg +
				      PCICFG_UE_STATUS_HI_MASK);

		ue_lo = (ue_lo & ~ue_lo_mask);
		ue_hi = (ue_hi & ~ue_hi_mask);

		if (ue_lo || ue_hi) {
			/* On certain platforms BE3 hardware can indicate
			 * spurious UEs. In case of a UE in the chip,
			 * the POST register correctly reports either a
			 * FAT_LOG_START state (FW is currently dumping
			 * FAT log data) or a ARMFW_UE state. Check for the
			 * above states to ascertain if the UE is valid or not.
			 */
			if (FUNC0(adapter)) {
				val = FUNC1(adapter);
				if ((val & POST_STAGE_FAT_LOG_START)
				     != POST_STAGE_FAT_LOG_START &&
				    (val & POST_STAGE_ARMFW_UE)
				     != POST_STAGE_ARMFW_UE &&
				    (val & POST_STAGE_RECOVERABLE_ERR)
				     != POST_STAGE_RECOVERABLE_ERR)
					return;
			}

			FUNC4(dev, "Error detected in the adapter");
			FUNC3(adapter, BE_ERROR_UE);

			for (i = 0; ue_lo; ue_lo >>= 1, i++) {
				if (ue_lo & 1)
					FUNC4(dev, "UE: %s bit set\n",
						ue_status_low_desc[i]);
			}
			for (i = 0; ue_hi; ue_hi >>= 1, i++) {
				if (ue_hi & 1)
					FUNC4(dev, "UE: %s bit set\n",
						ue_status_hi_desc[i]);
			}
		}
	}
}