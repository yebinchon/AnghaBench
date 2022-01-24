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
typedef  int u16 ;
struct wmi_cmd_hdr {int /*<<< orphan*/  seq_no; int /*<<< orphan*/  command_id; } ;
struct wmi {scalar_t__ last_seq_id; int /*<<< orphan*/  wmi_lock; int /*<<< orphan*/  wmi_event_tasklet; int /*<<< orphan*/  wmi_event_queue; int /*<<< orphan*/  stopped; } ;
struct sk_buff {scalar_t__ data; } ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct wmi*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void *priv, struct sk_buff *skb,
			      enum htc_endpoint_id epid)
{
	struct wmi *wmi = priv;
	struct wmi_cmd_hdr *hdr;
	unsigned long flags;
	u16 cmd_id;

	if (FUNC7(wmi->stopped))
		goto free_skb;

	hdr = (struct wmi_cmd_hdr *) skb->data;
	cmd_id = FUNC2(hdr->command_id);

	if (cmd_id & 0x1000) {
		FUNC4(&wmi->wmi_lock, flags);
		FUNC0(&wmi->wmi_event_queue, skb);
		FUNC5(&wmi->wmi_lock, flags);
		FUNC6(&wmi->wmi_event_tasklet);
		return;
	}

	/* Check if there has been a timeout. */
	FUNC4(&wmi->wmi_lock, flags);
	if (FUNC2(hdr->seq_no) != wmi->last_seq_id) {
		FUNC5(&wmi->wmi_lock, flags);
		goto free_skb;
	}
	FUNC5(&wmi->wmi_lock, flags);

	/* WMI command response */
	FUNC1(wmi, skb);

free_skb:
	FUNC3(skb);
}