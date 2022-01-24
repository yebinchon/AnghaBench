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
struct sk_buff {scalar_t__ data; } ;
struct net_device {int addr_len; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  perm_addr; } ;
struct i2400m_tlv_detailed_device_info {int /*<<< orphan*/  mac_address; } ;
struct TYPE_2__ {struct net_device* net_dev; } ;
struct i2400m {TYPE_1__ wimax_dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETH_ALEN ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct i2400m*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC5 (int,struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*,...) ; 
 struct device* FUNC8 (struct i2400m*) ; 
 struct sk_buff* FUNC9 (struct i2400m*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static
int FUNC14(struct i2400m *i2400m)
{
	int result;
	struct device *dev = FUNC8(i2400m);
	struct sk_buff *skb;
	const struct i2400m_tlv_detailed_device_info *ddi;
	struct net_device *net_dev = i2400m->wimax_dev.net_dev;

	FUNC4(3, dev, "(i2400m %p)\n", i2400m);
	skb = FUNC9(i2400m);
	if (FUNC1(skb)) {
		result = FUNC2(skb);
		FUNC6(dev, "Cannot verify MAC address, error reading: %d\n",
			result);
		goto error;
	}
	/* Extract MAC address */
	ddi = (void *) skb->data;
	FUNC0(ETH_ALEN != sizeof(ddi->mac_address));
	FUNC5(2, dev, "GET DEVICE INFO: mac addr %pM\n",
		 ddi->mac_address);
	if (!FUNC12(net_dev->perm_addr, ddi->mac_address,
		   sizeof(ddi->mac_address)))
		goto ok;
	FUNC7(dev, "warning: device reports a different MAC address "
		 "to that of boot mode's\n");
	FUNC7(dev, "device reports     %pM\n", ddi->mac_address);
	FUNC7(dev, "boot mode reported %pM\n", net_dev->perm_addr);
	if (FUNC10(ddi->mac_address))
		FUNC6(dev, "device reports an invalid MAC address, "
			"not updating\n");
	else {
		FUNC7(dev, "updating MAC address\n");
		net_dev->addr_len = ETH_ALEN;
		FUNC13(net_dev->perm_addr, ddi->mac_address, ETH_ALEN);
		FUNC13(net_dev->dev_addr, ddi->mac_address, ETH_ALEN);
	}
ok:
	result = 0;
	FUNC11(skb);
error:
	FUNC3(3, dev, "(i2400m %p) = %d\n", i2400m, result);
	return result;
}