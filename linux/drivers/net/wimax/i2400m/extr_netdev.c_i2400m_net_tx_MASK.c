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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct net_device {int dummy; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2400M_PT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*,struct net_device*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct i2400m*,struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct device*,char*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct device* FUNC4 (struct i2400m*) ; 
 int FUNC5 (struct i2400m*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static
int FUNC8(struct i2400m *i2400m, struct net_device *net_dev,
		  struct sk_buff *skb)
{
	int result;
	struct device *dev = FUNC4(i2400m);

	FUNC2(3, dev, "(i2400m %p net_dev %p skb %p)\n",
		  i2400m, net_dev, skb);
	/* FIXME: check eth hdr, only IPv4 is routed by the device as of now */
	FUNC7(net_dev);
	FUNC6(skb);
	FUNC3(3, dev, "NETTX: skb %p sending %d bytes to radio\n",
		 skb, skb->len);
	FUNC0(4, dev, skb->data, skb->len);
	result = FUNC5(i2400m, skb->data, skb->len, I2400M_PT_DATA);
	FUNC1(3, dev, "(i2400m %p net_dev %p skb %p) = %d\n",
		i2400m, net_dev, skb, result);
	return result;
}