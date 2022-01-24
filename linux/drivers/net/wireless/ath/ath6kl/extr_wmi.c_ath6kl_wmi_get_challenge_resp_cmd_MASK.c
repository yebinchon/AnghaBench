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
typedef  int /*<<< orphan*/  u32 ;
struct wmix_hb_challenge_resp_cmd {void* source; void* cookie; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NO_SYNC_WMIFLAG ; 
 int /*<<< orphan*/  WMIX_HB_CHALLENGE_RESP_CMDID ; 
 int FUNC0 (struct wmi*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct wmi *wmi, u32 cookie, u32 source)
{
	struct sk_buff *skb;
	struct wmix_hb_challenge_resp_cmd *cmd;
	int ret;

	skb = FUNC1(sizeof(*cmd));
	if (!skb)
		return -ENOMEM;

	cmd = (struct wmix_hb_challenge_resp_cmd *) skb->data;
	cmd->cookie = FUNC2(cookie);
	cmd->source = FUNC2(source);

	ret = FUNC0(wmi, skb, WMIX_HB_CHALLENGE_RESP_CMDID,
				       NO_SYNC_WMIFLAG);
	return ret;
}