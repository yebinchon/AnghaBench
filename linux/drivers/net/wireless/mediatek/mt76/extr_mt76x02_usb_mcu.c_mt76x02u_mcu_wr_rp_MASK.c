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
typedef  scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct mt76_usb {TYPE_1__ mcu; } ;
struct mt76_reg_pair {scalar_t__ value; scalar_t__ reg; } ;
struct mt76_dev {struct mt76_usb usb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MT_DMA_HDR_LEN ; 
 int MT_INBAND_PACKET_MAX_LEN ; 
 int FUNC0 (struct mt76_dev*,struct sk_buff*,int const,int) ; 
 struct sk_buff* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (int const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int
FUNC7(struct mt76_dev *dev, u32 base,
		   const struct mt76_reg_pair *data, int n)
{
	const int CMD_RANDOM_WRITE = 12;
	const int max_vals_per_cmd = MT_INBAND_PACKET_MAX_LEN / 8;
	struct mt76_usb *usb = &dev->usb;
	struct sk_buff *skb;
	int cnt, i, ret;

	if (!n)
		return 0;

	cnt = FUNC2(max_vals_per_cmd, n);

	skb = FUNC1(cnt * 8 + MT_DMA_HDR_LEN + 4, GFP_KERNEL);
	if (!skb)
		return -ENOMEM;
	FUNC6(skb, MT_DMA_HDR_LEN);

	for (i = 0; i < cnt; i++) {
		FUNC5(skb, base + data[i].reg);
		FUNC5(skb, data[i].value);
	}

	FUNC3(&usb->mcu.mutex);
	ret = FUNC0(dev, skb, CMD_RANDOM_WRITE, cnt == n);
	FUNC4(&usb->mcu.mutex);
	if (ret)
		return ret;

	return FUNC7(dev, base, data + cnt, n - cnt);
}