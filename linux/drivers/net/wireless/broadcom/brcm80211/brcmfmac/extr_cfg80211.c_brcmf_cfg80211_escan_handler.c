
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct brcmf_scan_results {size_t buflen; int count; int version; struct brcmf_bss_info_le* bss_info_le; } ;
struct brcmf_pub {struct brcmf_cfg80211_info* config; } ;
struct brcmf_if {int bsscfgidx; struct brcmf_pub* drvr; } ;
struct brcmf_event_msg {scalar_t__ status; int datalen; } ;
struct brcmf_bss_info_le {int version; int length; int capability; } ;
struct brcmf_escan_result_le {struct brcmf_bss_info_le bss_info_le; int bss_count; int buflen; } ;
struct TYPE_3__ {int escan_state; int * escan_buf; } ;
struct brcmf_cfg80211_info {scalar_t__ scan_request; scalar_t__ int_escan_map; TYPE_1__ escan_info; int scan_status; } ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {int interface_modes; } ;


 int BIT (int ) ;
 int BRCMF_ESCAN_BUF_SIZE ;
 scalar_t__ BRCMF_E_STATUS_ABORT ;
 scalar_t__ BRCMF_E_STATUS_PARTIAL ;
 scalar_t__ BRCMF_E_STATUS_SUCCESS ;
 int BRCMF_SCAN_STATUS_BUSY ;
 scalar_t__ EPERM ;
 int NL80211_IFTYPE_ADHOC ;
 int SCAN ;
 int WLAN_CAPABILITY_IBSS ;
 int WL_ESCAN_RESULTS_FIXED_SIZE ;
 int WL_ESCAN_STATE_IDLE ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 scalar_t__ brcmf_compare_update_same_bss (struct brcmf_cfg80211_info*,struct brcmf_bss_info_le*,struct brcmf_bss_info_le*) ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_inform_bss (struct brcmf_cfg80211_info*) ;
 int brcmf_notify_escan_complete (struct brcmf_cfg80211_info*,struct brcmf_if*,int,int) ;
 scalar_t__ brcmf_p2p_scan_finding_common_channel (struct brcmf_cfg80211_info*,struct brcmf_bss_info_le*) ;
 TYPE_2__* cfg_to_wiphy (struct brcmf_cfg80211_info*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,struct brcmf_bss_info_le*,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static s32
brcmf_cfg80211_escan_handler(struct brcmf_if *ifp,
        const struct brcmf_event_msg *e, void *data)
{
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_cfg80211_info *cfg = drvr->config;
 s32 status;
 struct brcmf_escan_result_le *escan_result_le;
 u32 escan_buflen;
 struct brcmf_bss_info_le *bss_info_le;
 struct brcmf_bss_info_le *bss = ((void*)0);
 u32 bi_length;
 struct brcmf_scan_results *list;
 u32 i;
 bool aborted;

 status = e->status;

 if (status == BRCMF_E_STATUS_ABORT)
  goto exit;

 if (!test_bit(BRCMF_SCAN_STATUS_BUSY, &cfg->scan_status)) {
  bphy_err(drvr, "scan not ready, bsscfgidx=%d\n",
    ifp->bsscfgidx);
  return -EPERM;
 }

 if (status == BRCMF_E_STATUS_PARTIAL) {
  brcmf_dbg(SCAN, "ESCAN Partial result\n");
  if (e->datalen < sizeof(*escan_result_le)) {
   bphy_err(drvr, "invalid event data length\n");
   goto exit;
  }
  escan_result_le = (struct brcmf_escan_result_le *) data;
  if (!escan_result_le) {
   bphy_err(drvr, "Invalid escan result (NULL pointer)\n");
   goto exit;
  }
  escan_buflen = le32_to_cpu(escan_result_le->buflen);
  if (escan_buflen > BRCMF_ESCAN_BUF_SIZE ||
      escan_buflen > e->datalen ||
      escan_buflen < sizeof(*escan_result_le)) {
   bphy_err(drvr, "Invalid escan buffer length: %d\n",
     escan_buflen);
   goto exit;
  }
  if (le16_to_cpu(escan_result_le->bss_count) != 1) {
   bphy_err(drvr, "Invalid bss_count %d: ignoring\n",
     escan_result_le->bss_count);
   goto exit;
  }
  bss_info_le = &escan_result_le->bss_info_le;

  if (brcmf_p2p_scan_finding_common_channel(cfg, bss_info_le))
   goto exit;

  if (!cfg->int_escan_map && !cfg->scan_request) {
   brcmf_dbg(SCAN, "result without cfg80211 request\n");
   goto exit;
  }

  bi_length = le32_to_cpu(bss_info_le->length);
  if (bi_length != escan_buflen - WL_ESCAN_RESULTS_FIXED_SIZE) {
   bphy_err(drvr, "Ignoring invalid bss_info length: %d\n",
     bi_length);
   goto exit;
  }

  if (!(cfg_to_wiphy(cfg)->interface_modes &
     BIT(NL80211_IFTYPE_ADHOC))) {
   if (le16_to_cpu(bss_info_le->capability) &
      WLAN_CAPABILITY_IBSS) {
    bphy_err(drvr, "Ignoring IBSS result\n");
    goto exit;
   }
  }

  list = (struct brcmf_scan_results *)
    cfg->escan_info.escan_buf;
  if (bi_length > BRCMF_ESCAN_BUF_SIZE - list->buflen) {
   bphy_err(drvr, "Buffer is too small: ignoring\n");
   goto exit;
  }

  for (i = 0; i < list->count; i++) {
   bss = bss ? (struct brcmf_bss_info_le *)
    ((unsigned char *)bss +
    le32_to_cpu(bss->length)) : list->bss_info_le;
   if (brcmf_compare_update_same_bss(cfg, bss,
         bss_info_le))
    goto exit;
  }
  memcpy(&cfg->escan_info.escan_buf[list->buflen], bss_info_le,
         bi_length);
  list->version = le32_to_cpu(bss_info_le->version);
  list->buflen += bi_length;
  list->count++;
 } else {
  cfg->escan_info.escan_state = WL_ESCAN_STATE_IDLE;
  if (brcmf_p2p_scan_finding_common_channel(cfg, ((void*)0)))
   goto exit;
  if (cfg->int_escan_map || cfg->scan_request) {
   brcmf_inform_bss(cfg);
   aborted = status != BRCMF_E_STATUS_SUCCESS;
   brcmf_notify_escan_complete(cfg, ifp, aborted, 0);
  } else
   brcmf_dbg(SCAN, "Ignored scan complete result 0x%x\n",
      status);
 }
exit:
 return 0;
}
