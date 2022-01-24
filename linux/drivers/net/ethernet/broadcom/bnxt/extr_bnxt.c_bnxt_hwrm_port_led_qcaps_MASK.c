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
struct hwrm_port_led_qcaps_output {scalar_t__ num_leds; int /*<<< orphan*/  led0_id; } ;
struct hwrm_port_led_qcaps_input {int /*<<< orphan*/  port_id; int /*<<< orphan*/  member_0; } ;
struct bnxt_pf_info {int /*<<< orphan*/  port_id; } ;
struct bnxt_led_info {int /*<<< orphan*/  led_group_id; int /*<<< orphan*/  led_state_caps; } ;
struct bnxt {scalar_t__ num_leds; int hwrm_spec_code; int /*<<< orphan*/  hwrm_cmd_lock; struct bnxt_led_info* leds; struct bnxt_pf_info pf; struct hwrm_port_led_qcaps_output* hwrm_cmd_resp_addr; } ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ BNXT_MAX_LED ; 
 scalar_t__ FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  HWRM_CMD_TIMEOUT ; 
 int /*<<< orphan*/  HWRM_PORT_LED_QCAPS ; 
 int FUNC2 (struct bnxt*,struct hwrm_port_led_qcaps_input*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*,struct hwrm_port_led_qcaps_input*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt_led_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct bnxt *bp)
{
	struct hwrm_port_led_qcaps_output *resp = bp->hwrm_cmd_resp_addr;
	struct hwrm_port_led_qcaps_input req = {0};
	struct bnxt_pf_info *pf = &bp->pf;
	int rc;

	bp->num_leds = 0;
	if (FUNC1(bp) || bp->hwrm_spec_code < 0x10601)
		return 0;

	FUNC3(bp, &req, HWRM_PORT_LED_QCAPS, -1, -1);
	req.port_id = FUNC4(pf->port_id);
	FUNC6(&bp->hwrm_cmd_lock);
	rc = FUNC2(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
	if (rc) {
		FUNC7(&bp->hwrm_cmd_lock);
		return rc;
	}
	if (resp->num_leds > 0 && resp->num_leds < BNXT_MAX_LED) {
		int i;

		bp->num_leds = resp->num_leds;
		FUNC5(bp->leds, &resp->led0_id, sizeof(bp->leds[0]) *
						 bp->num_leds);
		for (i = 0; i < bp->num_leds; i++) {
			struct bnxt_led_info *led = &bp->leds[i];
			__le16 caps = led->led_state_caps;

			if (!led->led_group_id ||
			    !FUNC0(caps)) {
				bp->num_leds = 0;
				break;
			}
		}
	}
	FUNC7(&bp->hwrm_cmd_lock);
	return 0;
}