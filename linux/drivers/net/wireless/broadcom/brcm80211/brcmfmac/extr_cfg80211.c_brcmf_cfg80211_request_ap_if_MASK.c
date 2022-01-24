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
struct brcmf_pub {int dummy; } ;
struct brcmf_mbss_ssid_le {int /*<<< orphan*/  SSID; void* SSID_len; void* bsscfgidx; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef  int /*<<< orphan*/  mbss_ssid_le ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int FUNC1 (struct brcmf_if*,char*,struct brcmf_mbss_ssid_le*,int) ; 
 int FUNC2 (struct brcmf_pub*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_mbss_ssid_le*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC6(struct brcmf_if *ifp)
{
	struct brcmf_pub *drvr = ifp->drvr;
	struct brcmf_mbss_ssid_le mbss_ssid_le;
	int bsscfgidx;
	int err;

	FUNC4(&mbss_ssid_le, 0, sizeof(mbss_ssid_le));
	bsscfgidx = FUNC2(ifp->drvr);
	if (bsscfgidx < 0)
		return bsscfgidx;

	mbss_ssid_le.bsscfgidx = FUNC3(bsscfgidx);
	mbss_ssid_le.SSID_len = FUNC3(5);
	FUNC5(mbss_ssid_le.SSID, "ssid%d" , bsscfgidx);

	err = FUNC1(ifp, "bsscfg:ssid", &mbss_ssid_le,
					sizeof(mbss_ssid_le));
	if (err < 0)
		FUNC0(drvr, "setting ssid failed %d\n", err);

	return err;
}