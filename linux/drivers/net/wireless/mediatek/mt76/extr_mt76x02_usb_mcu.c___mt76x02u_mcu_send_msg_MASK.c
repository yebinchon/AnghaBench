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
typedef  int u8 ;
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int msg_seq; } ;
struct mt76_usb {TYPE_1__ mcu; } ;
struct mt76_dev {int /*<<< orphan*/  state; struct mt76_usb usb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_TX_PORT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MT76_REMOVED ; 
 int /*<<< orphan*/  MT_MCU_MSG_CMD_SEQ ; 
 int /*<<< orphan*/  MT_MCU_MSG_CMD_TYPE ; 
 int MT_MCU_MSG_TYPE_CMD ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct mt76_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct mt76_dev*,int) ; 
 int FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct mt76_dev *dev, struct sk_buff *skb,
			int cmd, bool wait_resp)
{
	struct mt76_usb *usb = &dev->usb;
	int ret;
	u8 seq = 0;
	u32 info;

	if (FUNC5(MT76_REMOVED, &dev->state))
		return 0;

	if (wait_resp) {
		seq = ++usb->mcu.msg_seq & 0xf;
		if (!seq)
			seq = ++usb->mcu.msg_seq & 0xf;
	}

	info = FUNC0(MT_MCU_MSG_CMD_SEQ, seq) |
	       FUNC0(MT_MCU_MSG_CMD_TYPE, cmd) |
	       MT_MCU_MSG_TYPE_CMD;
	ret = FUNC4(skb, CPU_TX_PORT, info);
	if (ret)
		return ret;

	ret = FUNC2(dev, skb->data, skb->len, NULL, 500);
	if (ret)
		return ret;

	if (wait_resp)
		ret = FUNC3(dev, seq);

	FUNC1(skb);

	return ret;
}