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
struct wmi_tlv_diag_item {int /*<<< orphan*/  len; int /*<<< orphan*/  payload; int /*<<< orphan*/  code; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  type; } ;
struct wmi_tlv_diag_data_ev {int /*<<< orphan*/  num_items; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC0 (void const**) ; 
 int FUNC1 (void const**) ; 
 size_t WMI_TLV_TAG_ARRAY_BYTE ; 
 size_t WMI_TLV_TAG_STRUCT_DIAG_DATA_CONTAINER_EVENT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,...) ; 
 int FUNC5 (void const*) ; 
 void** FUNC6 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void const**) ; 
 scalar_t__ FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ath10k*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ath10k *ar,
					  struct sk_buff *skb)
{
	const void **tb;
	const struct wmi_tlv_diag_data_ev *ev;
	const struct wmi_tlv_diag_item *item;
	const void *data;
	int ret, num_items, len;

	tb = FUNC6(ar, skb->data, skb->len, GFP_ATOMIC);
	if (FUNC0(tb)) {
		ret = FUNC1(tb);
		FUNC4(ar, "failed to parse tlv: %d\n", ret);
		return ret;
	}

	ev = tb[WMI_TLV_TAG_STRUCT_DIAG_DATA_CONTAINER_EVENT];
	data = tb[WMI_TLV_TAG_ARRAY_BYTE];
	if (!ev || !data) {
		FUNC7(tb);
		return -EPROTO;
	}

	num_items = FUNC3(ev->num_items);
	len = FUNC5(data);

	while (num_items--) {
		if (len == 0)
			break;
		if (len < sizeof(*item)) {
			FUNC4(ar, "failed to parse diag data: can't fit item header\n");
			break;
		}

		item = data;

		if (len < sizeof(*item) + FUNC2(item->len)) {
			FUNC4(ar, "failed to parse diag data: item is too long\n");
			break;
		}

		FUNC9(ar,
						item->type,
						FUNC3(item->timestamp),
						FUNC3(item->code),
						FUNC2(item->len),
						item->payload);

		len -= sizeof(*item);
		len -= FUNC8(FUNC2(item->len), 4);

		data += sizeof(*item);
		data += FUNC8(FUNC2(item->len), 4);
	}

	if (num_items != -1 || len != 0)
		FUNC4(ar, "failed to parse diag data event: num_items %d len %d\n",
			    num_items, len);

	FUNC7(tb);
	return 0;
}