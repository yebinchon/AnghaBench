#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct wmi_tlv_swba_parse {size_t n_tim; size_t n_noa; TYPE_1__* ev; struct wmi_swba_ev_arg* arg; } ;
struct wmi_swba_ev_arg {int /*<<< orphan*/  vdev_map; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ath10k {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vdev_map; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EPROTO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int FUNC3 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wmi_tlv_swba_parse*) ; 
 int /*<<< orphan*/  ath10k_wmi_tlv_swba_parse ; 

__attribute__((used)) static int FUNC4(struct ath10k *ar,
					  struct sk_buff *skb,
					  struct wmi_swba_ev_arg *arg)
{
	struct wmi_tlv_swba_parse swba = { .arg = arg };
	u32 map;
	size_t n_vdevs;
	int ret;

	ret = FUNC3(ar, skb->data, skb->len,
				  ath10k_wmi_tlv_swba_parse, &swba);
	if (ret) {
		FUNC2(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	if (!swba.ev)
		return -EPROTO;

	arg->vdev_map = swba.ev->vdev_map;

	for (map = FUNC1(arg->vdev_map), n_vdevs = 0; map; map >>= 1)
		if (map & FUNC0(0))
			n_vdevs++;

	if (n_vdevs != swba.n_tim ||
	    n_vdevs != swba.n_noa)
		return -EPROTO;

	return 0;
}