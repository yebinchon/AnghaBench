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
struct wmi_remain_on_chnl_cmd {void* duration; void* freq; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_WMI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_REMAIN_ON_CHNL_CMDID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct wmi *wmi, u8 if_idx, u32 freq, u32 dur)
{
	struct sk_buff *skb;
	struct wmi_remain_on_chnl_cmd *p;

	skb = FUNC2(sizeof(*p));
	if (!skb)
		return -ENOMEM;

	FUNC0(ATH6KL_DBG_WMI, "remain_on_chnl_cmd: freq=%u dur=%u\n",
		   freq, dur);
	p = (struct wmi_remain_on_chnl_cmd *) skb->data;
	p->freq = FUNC3(freq);
	p->duration = FUNC3(dur);
	return FUNC1(wmi, if_idx, skb, WMI_REMAIN_ON_CHNL_CMDID,
				   NO_SYNC_WMIFLAG);
}