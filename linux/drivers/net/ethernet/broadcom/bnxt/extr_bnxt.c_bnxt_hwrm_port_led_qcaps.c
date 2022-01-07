
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_port_led_qcaps_output {scalar_t__ num_leds; int led0_id; } ;
struct hwrm_port_led_qcaps_input {int port_id; int member_0; } ;
struct bnxt_pf_info {int port_id; } ;
struct bnxt_led_info {int led_group_id; int led_state_caps; } ;
struct bnxt {scalar_t__ num_leds; int hwrm_spec_code; int hwrm_cmd_lock; struct bnxt_led_info* leds; struct bnxt_pf_info pf; struct hwrm_port_led_qcaps_output* hwrm_cmd_resp_addr; } ;
typedef int req ;
typedef int __le16 ;


 int BNXT_LED_ALT_BLINK_CAP (int ) ;
 scalar_t__ BNXT_MAX_LED ;
 scalar_t__ BNXT_VF (struct bnxt*) ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_PORT_LED_QCAPS ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_port_led_qcaps_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_port_led_qcaps_input*,int ,int,int) ;
 int cpu_to_le16 (int ) ;
 int memcpy (struct bnxt_led_info*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int bnxt_hwrm_port_led_qcaps(struct bnxt *bp)
{
 struct hwrm_port_led_qcaps_output *resp = bp->hwrm_cmd_resp_addr;
 struct hwrm_port_led_qcaps_input req = {0};
 struct bnxt_pf_info *pf = &bp->pf;
 int rc;

 bp->num_leds = 0;
 if (BNXT_VF(bp) || bp->hwrm_spec_code < 0x10601)
  return 0;

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_PORT_LED_QCAPS, -1, -1);
 req.port_id = cpu_to_le16(pf->port_id);
 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (rc) {
  mutex_unlock(&bp->hwrm_cmd_lock);
  return rc;
 }
 if (resp->num_leds > 0 && resp->num_leds < BNXT_MAX_LED) {
  int i;

  bp->num_leds = resp->num_leds;
  memcpy(bp->leds, &resp->led0_id, sizeof(bp->leds[0]) *
       bp->num_leds);
  for (i = 0; i < bp->num_leds; i++) {
   struct bnxt_led_info *led = &bp->leds[i];
   __le16 caps = led->led_state_caps;

   if (!led->led_group_id ||
       !BNXT_LED_ALT_BLINK_CAP(caps)) {
    bp->num_leds = 0;
    break;
   }
  }
 }
 mutex_unlock(&bp->hwrm_cmd_lock);
 return 0;
}
