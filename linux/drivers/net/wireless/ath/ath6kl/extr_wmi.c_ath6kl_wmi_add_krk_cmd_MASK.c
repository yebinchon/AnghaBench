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
struct wmi_add_krk_cmd {int /*<<< orphan*/  krk; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMI_ADD_KRK_CMDID ; 
 int /*<<< orphan*/  WMI_KRK_LEN ; 
 int FUNC0 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC3(struct wmi *wmi, u8 if_idx, const u8 *krk)
{
	struct sk_buff *skb;
	struct wmi_add_krk_cmd *cmd;
	int ret;

	skb = FUNC1(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct wmi_add_krk_cmd *) skb->data;
	FUNC2(cmd->krk, krk, WMI_KRK_LEN);

	ret = FUNC0(wmi, if_idx, skb, WMI_ADD_KRK_CMDID,
				  NO_SYNC_WMIFLAG);

	return ret;
}