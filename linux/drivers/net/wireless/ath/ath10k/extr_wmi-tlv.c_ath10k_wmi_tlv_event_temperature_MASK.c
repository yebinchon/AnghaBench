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
struct wmi_tlv_pdev_temperature_event {int /*<<< orphan*/  temperature; } ;
struct sk_buff {int len; scalar_t__ data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ath10k *ar,
					    struct sk_buff *skb)
{
	const struct wmi_tlv_pdev_temperature_event *ev;

	ev = (struct wmi_tlv_pdev_temperature_event *)skb->data;
	if (FUNC0(skb->len < sizeof(*ev)))
		return -EPROTO;

	FUNC2(ar, FUNC1(ev->temperature));
	return 0;
}