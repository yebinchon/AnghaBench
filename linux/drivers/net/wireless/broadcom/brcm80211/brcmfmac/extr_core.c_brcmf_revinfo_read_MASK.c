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
struct seq_file {int /*<<< orphan*/  private; } ;
struct brcmf_rev_info {int /*<<< orphan*/  nvramrev; int /*<<< orphan*/  anarev; int /*<<< orphan*/  phyrev; int /*<<< orphan*/  phytype; int /*<<< orphan*/  bus; int /*<<< orphan*/  ucoderev; int /*<<< orphan*/  driverrev; int /*<<< orphan*/  boardrev; int /*<<< orphan*/  boardvendor; int /*<<< orphan*/  boardid; int /*<<< orphan*/  corerev; int /*<<< orphan*/  chippkg; int /*<<< orphan*/  chipname; int /*<<< orphan*/  radiorev; int /*<<< orphan*/  deviceid; int /*<<< orphan*/  vendorid; } ;
struct brcmf_bus {TYPE_1__* drvr; } ;
struct TYPE_2__ {int /*<<< orphan*/  clmver; struct brcmf_rev_info revinfo; } ;

/* Variables and functions */
 int BRCMU_BOARDREV_LEN ; 
 int BRCMU_DOTREV_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct brcmf_bus* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct seq_file *s, void *data)
{
	struct brcmf_bus *bus_if = FUNC2(s->private);
	struct brcmf_rev_info *ri = &bus_if->drvr->revinfo;
	char drev[BRCMU_DOTREV_LEN];
	char brev[BRCMU_BOARDREV_LEN];

	FUNC3(s, "vendorid: 0x%04x\n", ri->vendorid);
	FUNC3(s, "deviceid: 0x%04x\n", ri->deviceid);
	FUNC3(s, "radiorev: %s\n", FUNC1(ri->radiorev, drev));
	FUNC3(s, "chip: %s\n", ri->chipname);
	FUNC3(s, "chippkg: %u\n", ri->chippkg);
	FUNC3(s, "corerev: %u\n", ri->corerev);
	FUNC3(s, "boardid: 0x%04x\n", ri->boardid);
	FUNC3(s, "boardvendor: 0x%04x\n", ri->boardvendor);
	FUNC3(s, "boardrev: %s\n", FUNC0(ri->boardrev, brev));
	FUNC3(s, "driverrev: %s\n", FUNC1(ri->driverrev, drev));
	FUNC3(s, "ucoderev: %u\n", ri->ucoderev);
	FUNC3(s, "bus: %u\n", ri->bus);
	FUNC3(s, "phytype: %u\n", ri->phytype);
	FUNC3(s, "phyrev: %u\n", ri->phyrev);
	FUNC3(s, "anarev: %u\n", ri->anarev);
	FUNC3(s, "nvramrev: %08x\n", ri->nvramrev);

	FUNC3(s, "clmver: %s\n", bus_if->drvr->clmver);

	return 0;
}