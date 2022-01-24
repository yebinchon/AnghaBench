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
typedef  int u16 ;
struct myri10ge_priv {int tx_boundary; size_t board_number; int fw_name; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t MYRI10GE_MAX_BOARDS ; 
 int /*<<< orphan*/  PCI_EXP_LNKSTA ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct myri10ge_priv*) ; 
 int myri10ge_force_firmware ; 
 char* myri10ge_fw_aligned ; 
 int /*<<< orphan*/ * myri10ge_fw_name ; 
 char** myri10ge_fw_names ; 
 char* myri10ge_fw_unaligned ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct myri10ge_priv*,char*,int) ; 
 scalar_t__ FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(struct myri10ge_priv *mgp)
{
	int overridden = 0;

	if (myri10ge_force_firmware == 0) {
		int link_width;
		u16 lnk;

		FUNC5(mgp->pdev, PCI_EXP_LNKSTA, &lnk);
		link_width = (lnk >> 4) & 0x3f;

		/* Check to see if Link is less than 8 or if the
		 * upstream bridge is known to provide aligned
		 * completions */
		if (link_width < 8) {
			FUNC0(&mgp->pdev->dev, "PCIE x%d Link\n",
				 link_width);
			mgp->tx_boundary = 4096;
			FUNC6(mgp, myri10ge_fw_aligned, false);
		} else {
			FUNC4(mgp);
		}
	} else {
		if (myri10ge_force_firmware == 1) {
			FUNC0(&mgp->pdev->dev,
				 "Assuming aligned completions (forced)\n");
			mgp->tx_boundary = 4096;
			FUNC6(mgp, myri10ge_fw_aligned, false);
		} else {
			FUNC0(&mgp->pdev->dev,
				 "Assuming unaligned completions (forced)\n");
			mgp->tx_boundary = 2048;
			FUNC6(mgp, myri10ge_fw_unaligned, false);
		}
	}

	FUNC1(THIS_MODULE);
	if (myri10ge_fw_name != NULL) {
		char *fw_name = FUNC3(myri10ge_fw_name, GFP_KERNEL);
		if (fw_name) {
			overridden = 1;
			FUNC6(mgp, fw_name, true);
		}
	}
	FUNC2(THIS_MODULE);

	if (mgp->board_number < MYRI10GE_MAX_BOARDS &&
	    myri10ge_fw_names[mgp->board_number] != NULL &&
	    FUNC7(myri10ge_fw_names[mgp->board_number])) {
		FUNC6(mgp, myri10ge_fw_names[mgp->board_number], false);
		overridden = 1;
	}
	if (overridden)
		FUNC0(&mgp->pdev->dev, "overriding firmware to %s\n",
			 mgp->fw_name);
}