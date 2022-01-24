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
typedef  int /*<<< orphan*/  u32 ;
struct brcmf_tlv {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int /*<<< orphan*/  vif; } ;
struct brcmf_cfg80211_info {scalar_t__ extra_buf; struct brcmf_pub* pub; } ;
struct brcmf_bss_info_le {int /*<<< orphan*/  ie_length; int /*<<< orphan*/  ie_offset; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_C_GET_BSS_INFO ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  WLAN_EID_TIM ; 
 int /*<<< orphan*/  WL_EXTRA_BUF_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct brcmf_if*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct brcmf_if*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct brcmf_cfg80211_info*,struct brcmf_bss_info_le*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct brcmf_tlv* FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC10(struct brcmf_cfg80211_info *cfg,
				 struct brcmf_if *ifp)
{
	struct brcmf_pub *drvr = cfg->pub;
	struct brcmf_bss_info_le *bi;
	const struct brcmf_tlv *tim;
	size_t ie_len;
	u8 *ie;
	s32 err = 0;

	FUNC1(TRACE, "Enter\n");
	if (FUNC5(ifp->vif))
		return err;

	*(__le32 *)cfg->extra_buf = FUNC7(WL_EXTRA_BUF_MAX);
	err = FUNC2(ifp, BRCMF_C_GET_BSS_INFO,
				     cfg->extra_buf, WL_EXTRA_BUF_MAX);
	if (err) {
		FUNC0(drvr, "Could not get bss info %d\n", err);
		goto update_bss_info_out;
	}

	bi = (struct brcmf_bss_info_le *)(cfg->extra_buf + 4);
	err = FUNC4(cfg, bi);
	if (err)
		goto update_bss_info_out;

	ie = ((u8 *)bi) + FUNC8(bi->ie_offset);
	ie_len = FUNC9(bi->ie_length);

	tim = FUNC6(ie, ie_len, WLAN_EID_TIM);
	if (!tim) {
		/*
		* active scan was done so we could not get dtim
		* information out of probe response.
		* so we speficially query dtim information to dongle.
		*/
		u32 var;
		err = FUNC3(ifp, "dtim_assoc", &var);
		if (err) {
			FUNC0(drvr, "wl dtim_assoc failed (%d)\n", err);
			goto update_bss_info_out;
		}
	}

update_bss_info_out:
	FUNC1(TRACE, "Exit");
	return err;
}