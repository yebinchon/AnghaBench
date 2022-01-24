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
struct urb {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;
struct p54u_rx_info {struct ieee80211_hw* dev; struct urb* urb; } ;
struct TYPE_2__ {scalar_t__ rx_mtu; } ;
struct p54u_priv {int /*<<< orphan*/  rx_queue; int /*<<< orphan*/  submitted; TYPE_1__ common; int /*<<< orphan*/  udev; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  P54U_PIPE_DATA ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  p54u_rx_cb ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct urb* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct urb*) ; 

__attribute__((used)) static int FUNC14(struct ieee80211_hw *dev)
{
	struct p54u_priv *priv = dev->priv;
	struct urb *entry = NULL;
	struct sk_buff *skb;
	struct p54u_rx_info *info;
	int ret = 0;

	while (FUNC3(&priv->rx_queue) < 32) {
		skb = FUNC0(priv->common.rx_mtu + 32, GFP_KERNEL);
		if (!skb) {
			ret = -ENOMEM;
			goto err;
		}
		entry = FUNC7(0, GFP_KERNEL);
		if (!entry) {
			ret = -ENOMEM;
			goto err;
		}

		FUNC9(entry, priv->udev,
				  FUNC11(priv->udev, P54U_PIPE_DATA),
				  FUNC5(skb),
				  priv->common.rx_mtu + 32, p54u_rx_cb, skb);
		info = (struct p54u_rx_info *) skb->cb;
		info->urb = entry;
		info->dev = dev;
		FUNC4(&priv->rx_queue, skb);

		FUNC8(entry, &priv->submitted);
		ret = FUNC12(entry, GFP_KERNEL);
		if (ret) {
			FUNC6(skb, &priv->rx_queue);
			FUNC13(entry);
			goto err;
		}
		FUNC10(entry);
		entry = NULL;
	}

	return 0;

 err:
	FUNC10(entry);
	FUNC1(skb);
	FUNC2(dev);
	return ret;
}