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
typedef  int u8 ;
struct wmi_data_hdr {int info; int /*<<< orphan*/  info3; } ;
struct wmi {int ep_id; int /*<<< orphan*/  parent_dev; } ;
struct sk_buff {scalar_t__ data; } ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;

/* Variables and functions */
 int EINVAL ; 
 int SYNC_MSGTYPE ; 
 scalar_t__ FUNC0 (int) ; 
 int WMI_DATA_HDR_IF_IDX_MASK ; 
 int WMI_DATA_HDR_MSG_TYPE_SHIFT ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC5(struct wmi *wmi, struct sk_buff *skb,
			      enum htc_endpoint_id ep_id, u8 if_idx)
{
	struct wmi_data_hdr *data_hdr;
	int ret;

	if (FUNC0(skb == NULL || ep_id == wmi->ep_id)) {
		FUNC3(skb);
		return -EINVAL;
	}

	FUNC4(skb, sizeof(struct wmi_data_hdr));

	data_hdr = (struct wmi_data_hdr *) skb->data;
	data_hdr->info = SYNC_MSGTYPE << WMI_DATA_HDR_MSG_TYPE_SHIFT;
	data_hdr->info3 = FUNC2(if_idx & WMI_DATA_HDR_IF_IDX_MASK);

	ret = FUNC1(wmi->parent_dev, skb, ep_id);

	return ret;
}