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
struct rtsx_slot {int dummy; } ;
struct rtsx_pcr {int /*<<< orphan*/  slots; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; int /*<<< orphan*/  card_drive_sel; int /*<<< orphan*/  sd30_drive_sel_3v3; int /*<<< orphan*/  sd30_drive_sel_1v8; int /*<<< orphan*/  aspm_en; TYPE_1__* ops; int /*<<< orphan*/  num_slots; int /*<<< orphan*/  ic_version; int /*<<< orphan*/  pcr_mutex; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* fetch_vendor_settings ) (struct rtsx_pcr*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  PDEV_STAT_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_pcr*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC15 (struct rtsx_pcr*) ; 
 int FUNC16 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct rtsx_pcr*) ; 

__attribute__((used)) static int FUNC19(struct rtsx_pcr *pcr)
{
	int err;

	FUNC17(&pcr->lock);
	FUNC3(&pcr->pcr_mutex);

	switch (FUNC0(pcr)) {
	default:
	case 0x5209:
		FUNC8(pcr);
		break;

	case 0x5229:
		FUNC10(pcr);
		break;

	case 0x5289:
		FUNC6(pcr);
		break;

	case 0x5227:
		FUNC9(pcr);
		break;

	case 0x522A:
		FUNC11(pcr);
		break;

	case 0x5249:
		FUNC12(pcr);
		break;

	case 0x524A:
		FUNC13(pcr);
		break;

	case 0x525A:
		FUNC14(pcr);
		break;

	case 0x5287:
		FUNC7(pcr);
		break;

	case 0x5286:
		FUNC5(pcr);
		break;
	case 0x5260:
		FUNC15(pcr);
		break;
	}

	FUNC4(pcr, "PID: 0x%04x, IC version: 0x%02x\n",
			FUNC0(pcr), pcr->ic_version);

	pcr->slots = FUNC1(pcr->num_slots, sizeof(struct rtsx_slot),
			GFP_KERNEL);
	if (!pcr->slots)
		return -ENOMEM;

	if (pcr->ops->fetch_vendor_settings)
		pcr->ops->fetch_vendor_settings(pcr);

	FUNC4(pcr, "pcr->aspm_en = 0x%x\n", pcr->aspm_en);
	FUNC4(pcr, "pcr->sd30_drive_sel_1v8 = 0x%x\n",
			pcr->sd30_drive_sel_1v8);
	FUNC4(pcr, "pcr->sd30_drive_sel_3v3 = 0x%x\n",
			pcr->sd30_drive_sel_3v3);
	FUNC4(pcr, "pcr->card_drive_sel = 0x%x\n",
			pcr->card_drive_sel);
	FUNC4(pcr, "pcr->flags = 0x%x\n", pcr->flags);

	pcr->state = PDEV_STAT_IDLE;
	err = FUNC16(pcr);
	if (err < 0) {
		FUNC2(pcr->slots);
		return err;
	}

	return 0;
}