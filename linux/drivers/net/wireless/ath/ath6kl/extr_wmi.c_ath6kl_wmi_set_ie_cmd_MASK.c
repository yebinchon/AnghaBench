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
typedef  scalar_t__ u8 ;
struct wmi_set_ie_cmd {int /*<<< orphan*/  ie_info; scalar_t__ ie_len; scalar_t__ ie_field; scalar_t__ ie_id; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_SET_IE_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct wmi*,scalar_t__,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__ const*,scalar_t__) ; 

int FUNC4(struct wmi *wmi, u8 if_idx, u8 ie_id, u8 ie_field,
			  const u8 *ie_info, u8 ie_len)
{
	struct sk_buff *skb;
	struct wmi_set_ie_cmd *p;

	skb = FUNC2(sizeof(*p) + ie_len);
	if (!skb)
		return -ENOMEM;

	FUNC0(ATH6KL_DBG_WMI, "set_ie_cmd: ie_id=%u ie_ie_field=%u ie_len=%u\n",
		   ie_id, ie_field, ie_len);
	p = (struct wmi_set_ie_cmd *) skb->data;
	p->ie_id = ie_id;
	p->ie_field = ie_field;
	p->ie_len = ie_len;
	if (ie_info && ie_len > 0)
		FUNC3(p->ie_info, ie_info, ie_len);

	return FUNC1(wmi, if_idx, skb, WMI_SET_IE_CMDID,
				   NO_SYNC_WMIFLAG);
}