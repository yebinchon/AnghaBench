#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct brcmf_scan_results {size_t buflen; int count; int version; struct brcmf_bss_info_le* bss_info_le; } ;
struct brcmf_pub {struct brcmf_cfg80211_info* config; } ;
struct brcmf_if {int /*<<< orphan*/  bsscfgidx; struct brcmf_pub* drvr; } ;
struct brcmf_event_msg {scalar_t__ status; int datalen; } ;
struct brcmf_bss_info_le {int /*<<< orphan*/  version; int /*<<< orphan*/  length; int /*<<< orphan*/  capability; } ;
struct brcmf_escan_result_le {struct brcmf_bss_info_le bss_info_le; int /*<<< orphan*/  bss_count; int /*<<< orphan*/  buflen; } ;
struct TYPE_3__ {int /*<<< orphan*/  escan_state; int /*<<< orphan*/ * escan_buf; } ;
struct brcmf_cfg80211_info {scalar_t__ scan_request; scalar_t__ int_escan_map; TYPE_1__ escan_info; int /*<<< orphan*/  scan_status; } ;
typedef  scalar_t__ s32 ;
struct TYPE_4__ {int interface_modes; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int BRCMF_ESCAN_BUF_SIZE ; 
 scalar_t__ BRCMF_E_STATUS_ABORT ; 
 scalar_t__ BRCMF_E_STATUS_PARTIAL ; 
 scalar_t__ BRCMF_E_STATUS_SUCCESS ; 
 int /*<<< orphan*/  BRCMF_SCAN_STATUS_BUSY ; 
 scalar_t__ EPERM ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  SCAN ; 
 int WLAN_CAPABILITY_IBSS ; 
 int WL_ESCAN_RESULTS_FIXED_SIZE ; 
 int /*<<< orphan*/  WL_ESCAN_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*,char*,...) ; 
 scalar_t__ FUNC2 (struct brcmf_cfg80211_info*,struct brcmf_bss_info_le*,struct brcmf_bss_info_le*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_cfg80211_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_cfg80211_info*,struct brcmf_if*,int,int) ; 
 scalar_t__ FUNC6 (struct brcmf_cfg80211_info*,struct brcmf_bss_info_le*) ; 
 TYPE_2__* FUNC7 (struct brcmf_cfg80211_info*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct brcmf_bss_info_le*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static s32
FUNC12(struct brcmf_if *ifp,
			     const struct brcmf_event_msg *e, void *data)
{
	struct brcmf_pub *drvr = ifp->drvr;
	struct brcmf_cfg80211_info *cfg = drvr->config;
	s32 status;
	struct brcmf_escan_result_le *escan_result_le;
	u32 escan_buflen;
	struct brcmf_bss_info_le *bss_info_le;
	struct brcmf_bss_info_le *bss = NULL;
	u32 bi_length;
	struct brcmf_scan_results *list;
	u32 i;
	bool aborted;

	status = e->status;

	if (status == BRCMF_E_STATUS_ABORT)
		goto exit;

	if (!FUNC11(BRCMF_SCAN_STATUS_BUSY, &cfg->scan_status)) {
		FUNC1(drvr, "scan not ready, bsscfgidx=%d\n",
			 ifp->bsscfgidx);
		return -EPERM;
	}

	if (status == BRCMF_E_STATUS_PARTIAL) {
		FUNC3(SCAN, "ESCAN Partial result\n");
		if (e->datalen < sizeof(*escan_result_le)) {
			FUNC1(drvr, "invalid event data length\n");
			goto exit;
		}
		escan_result_le = (struct brcmf_escan_result_le *) data;
		if (!escan_result_le) {
			FUNC1(drvr, "Invalid escan result (NULL pointer)\n");
			goto exit;
		}
		escan_buflen = FUNC9(escan_result_le->buflen);
		if (escan_buflen > BRCMF_ESCAN_BUF_SIZE ||
		    escan_buflen > e->datalen ||
		    escan_buflen < sizeof(*escan_result_le)) {
			FUNC1(drvr, "Invalid escan buffer length: %d\n",
				 escan_buflen);
			goto exit;
		}
		if (FUNC8(escan_result_le->bss_count) != 1) {
			FUNC1(drvr, "Invalid bss_count %d: ignoring\n",
				 escan_result_le->bss_count);
			goto exit;
		}
		bss_info_le = &escan_result_le->bss_info_le;

		if (FUNC6(cfg, bss_info_le))
			goto exit;

		if (!cfg->int_escan_map && !cfg->scan_request) {
			FUNC3(SCAN, "result without cfg80211 request\n");
			goto exit;
		}

		bi_length = FUNC9(bss_info_le->length);
		if (bi_length != escan_buflen -	WL_ESCAN_RESULTS_FIXED_SIZE) {
			FUNC1(drvr, "Ignoring invalid bss_info length: %d\n",
				 bi_length);
			goto exit;
		}

		if (!(FUNC7(cfg)->interface_modes &
					FUNC0(NL80211_IFTYPE_ADHOC))) {
			if (FUNC8(bss_info_le->capability) &
						WLAN_CAPABILITY_IBSS) {
				FUNC1(drvr, "Ignoring IBSS result\n");
				goto exit;
			}
		}

		list = (struct brcmf_scan_results *)
				cfg->escan_info.escan_buf;
		if (bi_length > BRCMF_ESCAN_BUF_SIZE - list->buflen) {
			FUNC1(drvr, "Buffer is too small: ignoring\n");
			goto exit;
		}

		for (i = 0; i < list->count; i++) {
			bss = bss ? (struct brcmf_bss_info_le *)
				((unsigned char *)bss +
				FUNC9(bss->length)) : list->bss_info_le;
			if (FUNC2(cfg, bss,
							  bss_info_le))
				goto exit;
		}
		FUNC10(&cfg->escan_info.escan_buf[list->buflen], bss_info_le,
		       bi_length);
		list->version = FUNC9(bss_info_le->version);
		list->buflen += bi_length;
		list->count++;
	} else {
		cfg->escan_info.escan_state = WL_ESCAN_STATE_IDLE;
		if (FUNC6(cfg, NULL))
			goto exit;
		if (cfg->int_escan_map || cfg->scan_request) {
			FUNC4(cfg);
			aborted = status != BRCMF_E_STATUS_SUCCESS;
			FUNC5(cfg, ifp, aborted, false);
		} else
			FUNC3(SCAN, "Ignored scan complete result 0x%x\n",
				  status);
	}
exit:
	return 0;
}