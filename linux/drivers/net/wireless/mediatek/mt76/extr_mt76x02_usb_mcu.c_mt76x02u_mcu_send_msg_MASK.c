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
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct mt76_usb {TYPE_1__ mcu; } ;
struct mt76_dev {struct mt76_usb usb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MT_CMD_HDR_LEN ; 
 int FUNC0 (struct mt76_dev*,struct sk_buff*,int,int) ; 
 struct sk_buff* FUNC1 (void const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct mt76_dev *dev, int cmd, const void *data,
		      int len, bool wait_resp)
{
	struct mt76_usb *usb = &dev->usb;
	struct sk_buff *skb;
	int err;

	skb = FUNC1(data, MT_CMD_HDR_LEN, len, 8);
	if (!skb)
		return -ENOMEM;

	FUNC2(&usb->mcu.mutex);
	err = FUNC0(dev, skb, cmd, wait_resp);
	FUNC3(&usb->mcu.mutex);

	return err;
}