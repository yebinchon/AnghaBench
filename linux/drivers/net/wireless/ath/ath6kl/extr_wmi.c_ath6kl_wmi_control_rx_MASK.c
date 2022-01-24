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
struct wmi_cmd_hdr {int dummy; } ;
struct wmi {int dummy; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct wmi*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5(struct wmi *wmi, struct sk_buff *skb)
{
	if (FUNC0(skb == NULL))
		return -EINVAL;

	if (skb->len < sizeof(struct wmi_cmd_hdr)) {
		FUNC1("bad packet 1\n");
		FUNC3(skb);
		return -EINVAL;
	}

	FUNC4(skb->data, skb->len);

	return FUNC2(wmi, skb);
}