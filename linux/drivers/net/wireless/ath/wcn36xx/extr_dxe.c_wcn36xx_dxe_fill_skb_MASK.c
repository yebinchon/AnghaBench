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
struct wcn36xx_dxe_desc {int /*<<< orphan*/  dst_addr_l; } ;
struct wcn36xx_dxe_ctl {struct sk_buff* skb; struct wcn36xx_dxe_desc* desc; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  WCN36XX_PKT_SIZE ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
				struct wcn36xx_dxe_ctl *ctl,
				gfp_t gfp)
{
	struct wcn36xx_dxe_desc *dxe = ctl->desc;
	struct sk_buff *skb;

	skb = FUNC0(WCN36XX_PKT_SIZE, gfp);
	if (skb == NULL)
		return -ENOMEM;

	dxe->dst_addr_l = FUNC2(dev,
					 FUNC5(skb),
					 WCN36XX_PKT_SIZE,
					 DMA_FROM_DEVICE);
	if (FUNC3(dev, dxe->dst_addr_l)) {
		FUNC1(dev, "unable to map skb\n");
		FUNC4(skb);
		return -ENOMEM;
	}
	ctl->skb = skb;

	return 0;
}