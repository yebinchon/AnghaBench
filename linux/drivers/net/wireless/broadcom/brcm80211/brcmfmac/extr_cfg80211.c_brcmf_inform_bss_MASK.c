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
struct brcmf_scan_results {int count; scalar_t__ version; } ;
struct brcmf_pub {int dummy; } ;
struct TYPE_2__ {scalar_t__ escan_buf; } ;
struct brcmf_cfg80211_info {TYPE_1__ escan_info; struct brcmf_pub* pub; } ;
struct brcmf_bss_info_le {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ BRCMF_BSS_INFO_VERSION ; 
 scalar_t__ EOPNOTSUPP ; 
 int /*<<< orphan*/  SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC2 (struct brcmf_cfg80211_info*,struct brcmf_bss_info_le*) ; 
 struct brcmf_bss_info_le* FUNC3 (struct brcmf_scan_results*,struct brcmf_bss_info_le*) ; 

__attribute__((used)) static s32 FUNC4(struct brcmf_cfg80211_info *cfg)
{
	struct brcmf_pub *drvr = cfg->pub;
	struct brcmf_scan_results *bss_list;
	struct brcmf_bss_info_le *bi = NULL;	/* must be initialized */
	s32 err = 0;
	int i;

	bss_list = (struct brcmf_scan_results *)cfg->escan_info.escan_buf;
	if (bss_list->count != 0 &&
	    bss_list->version != BRCMF_BSS_INFO_VERSION) {
		FUNC0(drvr, "Version %d != WL_BSS_INFO_VERSION\n",
			 bss_list->version);
		return -EOPNOTSUPP;
	}
	FUNC1(SCAN, "scanned AP count (%d)\n", bss_list->count);
	for (i = 0; i < bss_list->count; i++) {
		bi = FUNC3(bss_list, bi);
		err = FUNC2(cfg, bi);
		if (err)
			break;
	}
	return err;
}