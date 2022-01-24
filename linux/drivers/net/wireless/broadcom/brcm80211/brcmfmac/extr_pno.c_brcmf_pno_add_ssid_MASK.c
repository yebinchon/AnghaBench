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
struct cfg80211_ssid {int ssid_len; int /*<<< orphan*/  ssid; } ;
struct brcmf_pub {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  SSID; void* SSID_len; } ;
struct brcmf_pno_net_param_le {TYPE_1__ ssid; void* flags; void* infra; void* wsec; void* wpa_auth; void* auth; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef  int /*<<< orphan*/  pfn ;

/* Variables and functions */
 int BRCMF_PNO_HIDDEN_BIT ; 
 int BRCMF_PNO_WPA_AUTH_ANY ; 
 int /*<<< orphan*/  SCAN ; 
 int WLAN_AUTH_OPEN ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct brcmf_if*,char*,struct brcmf_pno_net_param_le*,int) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct brcmf_if *ifp, struct cfg80211_ssid *ssid,
			      bool active)
{
	struct brcmf_pub *drvr = ifp->drvr;
	struct brcmf_pno_net_param_le pfn;
	int err;

	pfn.auth = FUNC3(WLAN_AUTH_OPEN);
	pfn.wpa_auth = FUNC3(BRCMF_PNO_WPA_AUTH_ANY);
	pfn.wsec = FUNC3(0);
	pfn.infra = FUNC3(1);
	pfn.flags = 0;
	if (active)
		pfn.flags = FUNC3(1 << BRCMF_PNO_HIDDEN_BIT);
	pfn.ssid.SSID_len = FUNC3(ssid->ssid_len);
	FUNC4(pfn.ssid.SSID, ssid->ssid, ssid->ssid_len);

	FUNC1(SCAN, "adding ssid=%.32s (active=%d)\n", ssid->ssid, active);
	err = FUNC2(ifp, "pfn_add", &pfn, sizeof(pfn));
	if (err < 0)
		FUNC0(drvr, "adding failed: err=%d\n", err);
	return err;
}