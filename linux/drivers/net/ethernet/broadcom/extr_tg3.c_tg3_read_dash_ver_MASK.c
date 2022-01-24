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
struct tg3 {int /*<<< orphan*/ * fw_ver; TYPE_1__* pdev; } ;
struct TYPE_2__ {scalar_t__ device; } ;

/* Variables and functions */
 int APE_FW_VERSION_BLDMSK ; 
 int APE_FW_VERSION_MAJMSK ; 
 int APE_FW_VERSION_MAJSFT ; 
 int APE_FW_VERSION_MINMSK ; 
 int APE_FW_VERSION_MINSFT ; 
 int APE_FW_VERSION_REVMSK ; 
 int APE_FW_VERSION_REVSFT ; 
 int /*<<< orphan*/  APE_HAS_NCSI ; 
 scalar_t__ TG3PCI_DEVICE_TIGON3_5725 ; 
 int /*<<< orphan*/  TG3_APE_FW_VERSION ; 
 scalar_t__ TG3_VER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,char*,char*,int,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct tg3*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct tg3 *tp)
{
	int vlen;
	u32 apedata;
	char *fwtype;

	apedata = FUNC2(tp, TG3_APE_FW_VERSION);

	if (FUNC3(tp, APE_HAS_NCSI))
		fwtype = "NCSI";
	else if (tp->pdev->device == TG3PCI_DEVICE_TIGON3_5725)
		fwtype = "SMASH";
	else
		fwtype = "DASH";

	vlen = FUNC1(tp->fw_ver);

	FUNC0(&tp->fw_ver[vlen], TG3_VER_SIZE - vlen, " %s v%d.%d.%d.%d",
		 fwtype,
		 (apedata & APE_FW_VERSION_MAJMSK) >> APE_FW_VERSION_MAJSFT,
		 (apedata & APE_FW_VERSION_MINMSK) >> APE_FW_VERSION_MINSFT,
		 (apedata & APE_FW_VERSION_REVMSK) >> APE_FW_VERSION_REVSFT,
		 (apedata & APE_FW_VERSION_BLDMSK));
}