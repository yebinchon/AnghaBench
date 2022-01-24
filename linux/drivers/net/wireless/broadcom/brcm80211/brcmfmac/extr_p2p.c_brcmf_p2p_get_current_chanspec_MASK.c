#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct brcmu_chan {int /*<<< orphan*/  chspec; int /*<<< orphan*/  bw; int /*<<< orphan*/  chnum; } ;
struct brcmf_p2p_info {TYPE_4__* cfg; TYPE_2__* bss_idx; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_bss_info_le {int /*<<< orphan*/  chanspec; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_7__ {int /*<<< orphan*/  (* encchspec ) (struct brcmu_chan*) ;} ;
struct TYPE_8__ {TYPE_3__ d11inf; } ;
struct TYPE_6__ {TYPE_1__* vif; } ;
struct TYPE_5__ {struct brcmf_if* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_GET_BSSID ; 
 int /*<<< orphan*/  BRCMF_C_GET_BSS_INFO ; 
 int /*<<< orphan*/  BRCMF_P2P_TEMP_CHAN ; 
 int /*<<< orphan*/  BRCMU_CHAN_BW_20 ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t P2PAPI_BSSCFG_PRIMARY ; 
 int WL_BSS_INFO_MAX ; 
 scalar_t__ FUNC0 (struct brcmf_if*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmu_chan*) ; 

__attribute__((used)) static void FUNC6(struct brcmf_p2p_info *p2p,
					   u16 *chanspec)
{
	struct brcmf_if *ifp;
	u8 mac_addr[ETH_ALEN];
	struct brcmu_chan ch;
	struct brcmf_bss_info_le *bi;
	u8 *buf;

	ifp = p2p->bss_idx[P2PAPI_BSSCFG_PRIMARY].vif->ifp;

	if (FUNC0(ifp, BRCMF_C_GET_BSSID, mac_addr,
				   ETH_ALEN) == 0) {
		buf = FUNC3(WL_BSS_INFO_MAX, GFP_KERNEL);
		if (buf != NULL) {
			*(__le32 *)buf = FUNC1(WL_BSS_INFO_MAX);
			if (FUNC0(ifp, BRCMF_C_GET_BSS_INFO,
						   buf, WL_BSS_INFO_MAX) == 0) {
				bi = (struct brcmf_bss_info_le *)(buf + 4);
				*chanspec = FUNC4(bi->chanspec);
				FUNC2(buf);
				return;
			}
			FUNC2(buf);
		}
	}
	/* Use default channel for P2P */
	ch.chnum = BRCMF_P2P_TEMP_CHAN;
	ch.bw = BRCMU_CHAN_BW_20;
	p2p->cfg->d11inf.encchspec(&ch);
	*chanspec = ch.chspec;
}