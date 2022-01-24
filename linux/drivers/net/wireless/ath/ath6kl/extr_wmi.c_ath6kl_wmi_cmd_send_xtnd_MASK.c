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
struct wmix_cmd_hdr {int /*<<< orphan*/  cmd_id; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;
typedef  enum wmix_command_id { ____Placeholder_wmix_command_id } wmix_command_id ;
typedef  enum wmi_sync_flag { ____Placeholder_wmi_sync_flag } wmi_sync_flag ;

/* Variables and functions */
 int /*<<< orphan*/  WMI_EXTENSION_CMDID ; 
 int FUNC0 (struct wmi*,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC3(struct wmi *wmi, struct sk_buff *skb,
				    enum wmix_command_id cmd_id,
				    enum wmi_sync_flag sync_flag)
{
	struct wmix_cmd_hdr *cmd_hdr;
	int ret;

	FUNC2(skb, sizeof(struct wmix_cmd_hdr));

	cmd_hdr = (struct wmix_cmd_hdr *) skb->data;
	cmd_hdr->cmd_id = FUNC1(cmd_id);

	ret = FUNC0(wmi, 0, skb, WMI_EXTENSION_CMDID, sync_flag);

	return ret;
}