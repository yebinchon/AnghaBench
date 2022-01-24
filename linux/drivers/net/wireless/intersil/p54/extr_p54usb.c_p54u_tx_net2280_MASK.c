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
struct urb {int transfer_flags; } ;
struct sk_buff {int len; scalar_t__ data; struct p54u_priv* priv; } ;
struct p54u_priv {int /*<<< orphan*/  submitted; int /*<<< orphan*/  udev; } ;
struct p54_hdr {int /*<<< orphan*/  req_id; } ;
struct net2280_tx_hdr {int /*<<< orphan*/  device_addr; void* len; void* val; void* addr; void* port; } ;
struct net2280_reg_write {int /*<<< orphan*/  device_addr; void* len; void* val; void* addr; void* port; } ;
struct ieee80211_hw {int len; scalar_t__ data; struct p54u_priv* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  ISL38XX_DEV_INT_DATA ; 
 int NET2280_DEV_U32 ; 
 int /*<<< orphan*/  P54U_DEV_BASE ; 
 int /*<<< orphan*/  P54U_PIPE_DATA ; 
 int /*<<< orphan*/  P54U_PIPE_DEV ; 
 int URB_FREE_BUFFER ; 
 int URB_ZERO_PACKET ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net2280_tx_hdr*) ; 
 struct net2280_tx_hdr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net2280_tx_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  p54u_tx_cb ; 
 int /*<<< orphan*/  p54u_tx_dummy_cb ; 
 struct urb* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net2280_tx_hdr*,int,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct urb*) ; 

__attribute__((used)) static void FUNC14(struct ieee80211_hw *dev, struct sk_buff *skb)
{
	struct p54u_priv *priv = dev->priv;
	struct urb *int_urb = NULL, *data_urb = NULL;
	struct net2280_tx_hdr *hdr = (void *)skb->data - sizeof(*hdr);
	struct net2280_reg_write *reg = NULL;
	int err = -ENOMEM;

	reg = FUNC4(sizeof(*reg), GFP_ATOMIC);
	if (!reg)
		goto out;

	int_urb = FUNC7(0, GFP_ATOMIC);
	if (!int_urb)
		goto out;

	data_urb = FUNC7(0, GFP_ATOMIC);
	if (!data_urb)
		goto out;

	reg->port = FUNC1(NET2280_DEV_U32);
	reg->addr = FUNC2(P54U_DEV_BASE);
	reg->val = FUNC2(ISL38XX_DEV_INT_DATA);

	FUNC5(hdr, 0, sizeof(*hdr));
	hdr->len = FUNC1(skb->len);
	hdr->device_addr = ((struct p54_hdr *) skb->data)->req_id;

	FUNC9(int_urb, priv->udev,
		FUNC11(priv->udev, P54U_PIPE_DEV), reg, sizeof(*reg),
		p54u_tx_dummy_cb, dev);

	/*
	 * URB_FREE_BUFFER triggers a code path in the USB subsystem that will
	 * free what is inside the transfer_buffer after the last reference to
	 * the int_urb is dropped.
	 */
	int_urb->transfer_flags |= URB_FREE_BUFFER | URB_ZERO_PACKET;
	reg = NULL;

	FUNC9(data_urb, priv->udev,
			  FUNC11(priv->udev, P54U_PIPE_DATA),
			  hdr, skb->len + sizeof(*hdr), FUNC0(skb) ?
			  p54u_tx_cb : p54u_tx_dummy_cb, skb);
	data_urb->transfer_flags |= URB_ZERO_PACKET;

	FUNC8(int_urb, &priv->submitted);
	err = FUNC12(int_urb, GFP_ATOMIC);
	if (err) {
		FUNC13(int_urb);
		goto out;
	}

	FUNC8(data_urb, &priv->submitted);
	err = FUNC12(data_urb, GFP_ATOMIC);
	if (err) {
		FUNC13(data_urb);
		goto out;
	}
out:
	FUNC10(int_urb);
	FUNC10(data_urb);

	if (err) {
		FUNC3(reg);
		FUNC6(dev, skb);
	}
}