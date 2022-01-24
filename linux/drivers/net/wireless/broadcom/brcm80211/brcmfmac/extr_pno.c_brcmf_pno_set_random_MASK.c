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
typedef  int u8 ;
struct brcmf_pub {int dummy; } ;
struct brcmf_pno_macaddr_le {int flags; int* mac; int /*<<< orphan*/  version; } ;
struct brcmf_pno_info {int n_reqs; TYPE_1__** reqs; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef  int /*<<< orphan*/  pfn_mac ;
struct TYPE_2__ {int flags; int* mac_addr; int* mac_addr_mask; int /*<<< orphan*/  reqid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_PFN_MACADDR_CFG_VER ; 
 int BRCMF_PFN_MAC_OUI_ONLY ; 
 int BRCMF_PFN_SET_MAC_UNASSOC ; 
 int ETH_ALEN ; 
 int NL80211_SCAN_FLAG_RANDOM_ADDR ; 
 int /*<<< orphan*/  SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct brcmf_if*,char*,struct brcmf_pno_macaddr_le*,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 

__attribute__((used)) static int FUNC5(struct brcmf_if *ifp, struct brcmf_pno_info *pi)
{
	struct brcmf_pub *drvr = ifp->drvr;
	struct brcmf_pno_macaddr_le pfn_mac;
	u8 *mac_addr = NULL;
	u8 *mac_mask = NULL;
	int err, i;

	for (i = 0; i < pi->n_reqs; i++)
		if (pi->reqs[i]->flags & NL80211_SCAN_FLAG_RANDOM_ADDR) {
			mac_addr = pi->reqs[i]->mac_addr;
			mac_mask = pi->reqs[i]->mac_addr_mask;
			break;
		}

	/* no random mac requested */
	if (!mac_addr)
		return 0;

	pfn_mac.version = BRCMF_PFN_MACADDR_CFG_VER;
	pfn_mac.flags = BRCMF_PFN_MAC_OUI_ONLY | BRCMF_PFN_SET_MAC_UNASSOC;

	FUNC4(pfn_mac.mac, mac_addr, ETH_ALEN);
	for (i = 0; i < ETH_ALEN; i++) {
		pfn_mac.mac[i] &= mac_mask[i];
		pfn_mac.mac[i] |= FUNC3() & ~(mac_mask[i]);
	}
	/* Clear multi bit */
	pfn_mac.mac[0] &= 0xFE;
	/* Set locally administered */
	pfn_mac.mac[0] |= 0x02;

	FUNC1(SCAN, "enabling random mac: reqid=%llu mac=%pM\n",
		  pi->reqs[i]->reqid, pfn_mac.mac);
	err = FUNC2(ifp, "pfn_macaddr", &pfn_mac,
				       sizeof(pfn_mac));
	if (err)
		FUNC0(drvr, "pfn_macaddr failed, err=%d\n", err);

	return err;
}