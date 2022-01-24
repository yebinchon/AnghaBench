#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct brcmf_pub {int dummy; } ;
struct brcmf_pno_bssid_le {scalar_t__ flags; int /*<<< orphan*/  bssid; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef  int /*<<< orphan*/  bssid_cfg ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int FUNC2 (struct brcmf_if*,char*,struct brcmf_pno_bssid_le*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct brcmf_if *ifp, const u8 *bssid)
{
	struct brcmf_pub *drvr = ifp->drvr;
	struct brcmf_pno_bssid_le bssid_cfg;
	int err;

	FUNC3(bssid_cfg.bssid, bssid, ETH_ALEN);
	bssid_cfg.flags = 0;

	FUNC1(SCAN, "adding bssid=%pM\n", bssid);
	err = FUNC2(ifp, "pfn_add_bssid", &bssid_cfg,
				       sizeof(bssid_cfg));
	if (err < 0)
		FUNC0(drvr, "adding failed: err=%d\n", err);
	return err;
}