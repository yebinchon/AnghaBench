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
typedef  int u32 ;
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  priority; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct hdlc_header {int dummy; } ;
struct cisco_packet {void* time; int /*<<< orphan*/  rel; void* par2; void* par1; void* type; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  CISCO_KEEPALIVE ; 
 int HZ ; 
 int INITIAL_JIFFIES ; 
 int /*<<< orphan*/  TC_PRIO_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 void* FUNC4 (int) ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev, u32 type,
				 __be32 par1, __be32 par2)
{
	struct sk_buff *skb;
	struct cisco_packet *data;

	skb = FUNC2(sizeof(struct hdlc_header) +
			    sizeof(struct cisco_packet));
	if (!skb) {
		FUNC5(dev, "Memory squeeze on cisco_keepalive_send()\n");
		return;
	}
	FUNC7(skb, 4);
	FUNC0(skb, dev, CISCO_KEEPALIVE, NULL, NULL, 0);
	data = (struct cisco_packet*)(skb->data + 4);

	data->type = FUNC4(type);
	data->par1 = par1;
	data->par2 = par2;
	data->rel = FUNC1(0xFFFF);
	/* we will need do_div here if 1000 % HZ != 0 */
	data->time = FUNC4((jiffies - INITIAL_JIFFIES) * (1000 / HZ));

	FUNC6(skb, sizeof(struct cisco_packet));
	skb->priority = TC_PRIO_CONTROL;
	skb->dev = dev;
	FUNC8(skb);

	FUNC3(skb);
}