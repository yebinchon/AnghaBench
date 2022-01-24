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
typedef  int /*<<< orphan*/  u16 ;
struct wmi_cmd_hdr {void* seq_no; void* command_id; } ;
struct wmi {int tx_seq_id; int last_seq_id; int /*<<< orphan*/  ctrl_epid; int /*<<< orphan*/  htc; int /*<<< orphan*/  wmi_lock; } ;
struct sk_buff {int dummy; } ;
typedef  enum wmi_cmd_id { ____Placeholder_wmi_cmd_id } wmi_cmd_id ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct wmi_cmd_hdr* FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct wmi *wmi,
			       struct sk_buff *skb,
			       enum wmi_cmd_id cmd, u16 len)
{
	struct wmi_cmd_hdr *hdr;
	unsigned long flags;

	hdr = FUNC2(skb, sizeof(struct wmi_cmd_hdr));
	hdr->command_id = FUNC0(cmd);
	hdr->seq_no = FUNC0(++wmi->tx_seq_id);

	FUNC3(&wmi->wmi_lock, flags);
	wmi->last_seq_id = wmi->tx_seq_id;
	FUNC4(&wmi->wmi_lock, flags);

	return FUNC1(wmi->htc, skb, wmi->ctrl_epid);
}