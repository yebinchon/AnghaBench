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
typedef  size_t u8 ;
typedef  int u16 ;
struct wmi_cmd_hdr {size_t mid; int /*<<< orphan*/  command_id; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {int reply_id; size_t reply_mid; int /*<<< orphan*/  wmi_call; scalar_t__ reply_buf; struct wil6210_vif** vifs; } ;
struct wil6210_mbox_hdr {scalar_t__ type; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 size_t FUNC0 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  KERN_ERR ; 
 size_t MID_BROADCAST ; 
 scalar_t__ WIL_MBOX_HDR_TYPE_WMI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,struct wil6210_mbox_hdr*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wil6210_priv*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wil6210_vif*,int,void*,int) ; 

__attribute__((used)) static void FUNC9(struct wil6210_priv *wil,
			     struct wil6210_mbox_hdr *hdr)
{
	u16 len = FUNC3(hdr->len);
	struct wil6210_vif *vif;

	if ((hdr->type == WIL_MBOX_HDR_TYPE_WMI) &&
	    (len >= sizeof(struct wmi_cmd_hdr))) {
		struct wmi_cmd_hdr *wmi = (void *)(&hdr[1]);
		void *evt_data = (void *)(&wmi[1]);
		u16 id = FUNC3(wmi->command_id);
		u8 mid = wmi->mid;

		FUNC5(wil, "Handle %s (0x%04x) (reply_id 0x%04x,%d)\n",
			    FUNC2(id), id, wil->reply_id,
			    wil->reply_mid);

		if (mid == MID_BROADCAST)
			mid = 0;
		if (mid >= FUNC0(wil)) {
			FUNC5(wil, "invalid mid %d, event skipped\n",
				    mid);
			return;
		}
		vif = wil->vifs[mid];
		if (!vif) {
			FUNC5(wil, "event for empty VIF(%d), skipped\n",
				    mid);
			return;
		}

		/* check if someone waits for this event */
		if (wil->reply_id && wil->reply_id == id &&
		    wil->reply_mid == mid) {
			if (wil->reply_buf) {
				/* event received while wmi_call is waiting
				 * with a buffer. Such event should be handled
				 * in wmi_recv_cmd function. Handling the event
				 * here means a previous wmi_call was timeout.
				 * Drop the event and do not handle it.
				 */
				FUNC6(wil,
					"Old event (%d, %s) while wmi_call is waiting. Drop it and Continue waiting\n",
					id, FUNC2(id));
				return;
			}

			FUNC8(vif, id, evt_data,
					     len - sizeof(*wmi));
			FUNC5(wil, "event_handle: Complete WMI 0x%04x\n",
				    id);
			FUNC1(&wil->wmi_call);
			return;
		}
		/* unsolicited event */
		/* search for handler */
		if (!FUNC8(vif, id, evt_data,
					  len - sizeof(*wmi))) {
			FUNC7(wil, "Unhandled event 0x%04x\n", id);
		}
	} else {
		FUNC6(wil, "Unknown event type\n");
		FUNC4(KERN_ERR, "evt?? ", DUMP_PREFIX_OFFSET, 16, 1,
			       hdr, sizeof(*hdr) + len, true);
	}
}