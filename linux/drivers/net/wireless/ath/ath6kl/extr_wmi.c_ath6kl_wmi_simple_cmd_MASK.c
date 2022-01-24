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
struct wmi {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef  enum wmi_cmd_id { ____Placeholder_wmi_cmd_id } wmi_cmd_id ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int FUNC0 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct wmi *wmi, u8 if_idx,
				 enum wmi_cmd_id cmd_id)
{
	struct sk_buff *skb;
	int ret;

	skb = FUNC1(0);
	if (!skb)
		return -ENOMEM;

	ret = FUNC0(wmi, if_idx, skb, cmd_id, NO_SYNC_WMIFLAG);

	return ret;
}