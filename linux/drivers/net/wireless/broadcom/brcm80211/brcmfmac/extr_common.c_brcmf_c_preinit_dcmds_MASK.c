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
typedef  char u8 ;
struct brcmf_rev_info_le {int /*<<< orphan*/  chiprev; int /*<<< orphan*/  chipnum; int /*<<< orphan*/  nvramrev; int /*<<< orphan*/  chippkg; int /*<<< orphan*/  anarev; int /*<<< orphan*/  phyrev; int /*<<< orphan*/  phytype; int /*<<< orphan*/  bus; int /*<<< orphan*/  ucoderev; int /*<<< orphan*/  driverrev; int /*<<< orphan*/  boardrev; int /*<<< orphan*/  boardvendor; int /*<<< orphan*/  boardid; int /*<<< orphan*/  corerev; int /*<<< orphan*/  radiorev; int /*<<< orphan*/  deviceid; int /*<<< orphan*/  vendorid; } ;
struct brcmf_rev_info {int /*<<< orphan*/  chipname; scalar_t__ result; void* nvramrev; void* chippkg; void* anarev; void* phyrev; void* phytype; void* bus; void* ucoderev; void* driverrev; void* boardrev; void* boardvendor; void* boardid; void* corerev; void* radiorev; void* deviceid; void* vendorid; } ;
struct brcmf_pub {char* mac; char* clmver; int /*<<< orphan*/  fwver; struct brcmf_rev_info revinfo; struct brcmf_bus* bus_if; TYPE_1__* wiphy; } ;
struct brcmf_if {char* mac_addr; struct brcmf_pub* drvr; } ;
struct brcmf_bus {void* chiprev; void* chip; } ;
typedef  char s8 ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  revinfo ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {char* perm_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_GET_REVINFO ; 
 int /*<<< orphan*/  BRCMF_C_SET_SCAN_CHANNEL_TIME ; 
 int /*<<< orphan*/  BRCMF_C_SET_SCAN_UNASSOC_TIME ; 
 int BRCMF_DCMD_SMLEN ; 
 int /*<<< orphan*/  BRCMF_DEFAULT_SCAN_CHANNEL_TIME ; 
 int /*<<< orphan*/  BRCMF_DEFAULT_SCAN_UNASSOC_TIME ; 
 int BRCMF_EVENTING_MASK_LEN ; 
 int /*<<< orphan*/  BRCMF_E_IF ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,...) ; 
 scalar_t__ FUNC1 (struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC5 (struct brcmf_if*,int /*<<< orphan*/ ,struct brcmf_rev_info_le*,int) ; 
 scalar_t__ FUNC6 (struct brcmf_if*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct brcmf_if*,char*,char*,int) ; 
 scalar_t__ FUNC8 (struct brcmf_if*,char*,char*,int) ; 
 scalar_t__ FUNC9 (struct brcmf_if*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC16 (char*,char) ; 
 int /*<<< orphan*/  FUNC17 (char*,char,char) ; 
 int /*<<< orphan*/  FUNC18 (char**,char*) ; 

int FUNC19(struct brcmf_if *ifp)
{
	struct brcmf_pub *drvr = ifp->drvr;
	s8 eventmask[BRCMF_EVENTING_MASK_LEN];
	u8 buf[BRCMF_DCMD_SMLEN];
	struct brcmf_bus *bus;
	struct brcmf_rev_info_le revinfo;
	struct brcmf_rev_info *ri;
	char *clmver;
	char *ptr;
	s32 err;

	/* retreive mac address */
	err = FUNC7(ifp, "cur_etheraddr", ifp->mac_addr,
				       sizeof(ifp->mac_addr));
	if (err < 0) {
		FUNC0(drvr, "Retrieving cur_etheraddr failed, %d\n", err);
		goto done;
	}
	FUNC12(ifp->drvr->wiphy->perm_addr, ifp->drvr->mac, ETH_ALEN);
	FUNC12(ifp->drvr->mac, ifp->mac_addr, sizeof(ifp->drvr->mac));

	bus = ifp->drvr->bus_if;
	ri = &ifp->drvr->revinfo;

	err = FUNC5(ifp, BRCMF_C_GET_REVINFO,
				     &revinfo, sizeof(revinfo));
	if (err < 0) {
		FUNC0(drvr, "retrieving revision info failed, %d\n", err);
		FUNC15(ri->chipname, "UNKNOWN", sizeof(ri->chipname));
	} else {
		ri->vendorid = FUNC11(revinfo.vendorid);
		ri->deviceid = FUNC11(revinfo.deviceid);
		ri->radiorev = FUNC11(revinfo.radiorev);
		ri->corerev = FUNC11(revinfo.corerev);
		ri->boardid = FUNC11(revinfo.boardid);
		ri->boardvendor = FUNC11(revinfo.boardvendor);
		ri->boardrev = FUNC11(revinfo.boardrev);
		ri->driverrev = FUNC11(revinfo.driverrev);
		ri->ucoderev = FUNC11(revinfo.ucoderev);
		ri->bus = FUNC11(revinfo.bus);
		ri->phytype = FUNC11(revinfo.phytype);
		ri->phyrev = FUNC11(revinfo.phyrev);
		ri->anarev = FUNC11(revinfo.anarev);
		ri->chippkg = FUNC11(revinfo.chippkg);
		ri->nvramrev = FUNC11(revinfo.nvramrev);

		/* use revinfo if not known yet */
		if (!bus->chip) {
			bus->chip = FUNC11(revinfo.chipnum);
			bus->chiprev = FUNC11(revinfo.chiprev);
		}
	}
	ri->result = err;

	if (bus->chip)
		FUNC3(bus->chip, bus->chiprev,
				ri->chipname, sizeof(ri->chipname));

	/* Do any CLM downloading */
	err = FUNC1(ifp);
	if (err < 0) {
		FUNC0(drvr, "download CLM blob file failed, %d\n", err);
		goto done;
	}

	/* query for 'ver' to get version info from firmware */
	FUNC13(buf, 0, sizeof(buf));
	err = FUNC7(ifp, "ver", buf, sizeof(buf));
	if (err < 0) {
		FUNC0(drvr, "Retrieving version information failed, %d\n",
			 err);
		goto done;
	}
	ptr = (char *)buf;
	FUNC18(&ptr, "\n");

	/* Print fw version info */
	FUNC10("Firmware: %s %s\n", ri->chipname, buf);

	/* locate firmware version number for ethtool */
	ptr = FUNC16(buf, ' ') + 1;
	FUNC15(ifp->drvr->fwver, ptr, sizeof(ifp->drvr->fwver));

	/* Query for 'clmver' to get CLM version info from firmware */
	FUNC13(buf, 0, sizeof(buf));
	err = FUNC7(ifp, "clmver", buf, sizeof(buf));
	if (err) {
		FUNC4(TRACE, "retrieving clmver failed, %d\n", err);
	} else {
		clmver = (char *)buf;
		/* store CLM version for adding it to revinfo debugfs file */
		FUNC12(ifp->drvr->clmver, clmver, sizeof(ifp->drvr->clmver));

		/* Replace all newline/linefeed characters with space
		 * character
		 */
		FUNC17(clmver, '\n', ' ');

		FUNC4(INFO, "CLM version = %s\n", clmver);
	}

	/* set mpc */
	err = FUNC9(ifp, "mpc", 1);
	if (err) {
		FUNC0(drvr, "failed setting mpc\n");
		goto done;
	}

	FUNC2(ifp);

	/* Setup event_msgs, enable E_IF */
	err = FUNC7(ifp, "event_msgs", eventmask,
				       BRCMF_EVENTING_MASK_LEN);
	if (err) {
		FUNC0(drvr, "Get event_msgs error (%d)\n", err);
		goto done;
	}
	FUNC14(eventmask, BRCMF_E_IF);
	err = FUNC8(ifp, "event_msgs", eventmask,
				       BRCMF_EVENTING_MASK_LEN);
	if (err) {
		FUNC0(drvr, "Set event_msgs error (%d)\n", err);
		goto done;
	}

	/* Setup default scan channel time */
	err = FUNC6(ifp, BRCMF_C_SET_SCAN_CHANNEL_TIME,
				    BRCMF_DEFAULT_SCAN_CHANNEL_TIME);
	if (err) {
		FUNC0(drvr, "BRCMF_C_SET_SCAN_CHANNEL_TIME error (%d)\n",
			 err);
		goto done;
	}

	/* Setup default scan unassoc time */
	err = FUNC6(ifp, BRCMF_C_SET_SCAN_UNASSOC_TIME,
				    BRCMF_DEFAULT_SCAN_UNASSOC_TIME);
	if (err) {
		FUNC0(drvr, "BRCMF_C_SET_SCAN_UNASSOC_TIME error (%d)\n",
			 err);
		goto done;
	}

	/* Enable tx beamforming, errors can be ignored (not supported) */
	(void)FUNC9(ifp, "txbf", 1);
done:
	return err;
}