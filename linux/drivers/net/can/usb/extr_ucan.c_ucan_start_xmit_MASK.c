#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  struct ucan_urb_context* u8 ;
struct urb {int dummy; } ;
struct ucan_urb_context {int dummy; } ;
struct ucan_priv {int context_array; TYPE_2__* netdev; int /*<<< orphan*/  echo_skb_lock; int /*<<< orphan*/  tx_urbs; } ;
struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct can_frame {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_7__ {int /*<<< orphan*/  tx_dropped; } ;
struct TYPE_8__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct ucan_urb_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,TYPE_2__*,struct ucan_urb_context*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 struct ucan_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ucan_urb_context* FUNC12 (struct ucan_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct ucan_priv*,struct urb*) ; 
 struct urb* FUNC14 (struct ucan_priv*,struct ucan_urb_context*,struct can_frame*,struct ucan_urb_context*) ; 
 int /*<<< orphan*/  FUNC15 (struct ucan_priv*,struct ucan_urb_context*) ; 
 int /*<<< orphan*/  FUNC16 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct urb*) ; 
 int FUNC18 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct urb*) ; 

__attribute__((used)) static netdev_tx_t FUNC20(struct sk_buff *skb,
				   struct net_device *netdev)
{
	unsigned long flags;
	int ret;
	u8 echo_index;
	struct urb *urb;
	struct ucan_urb_context *context;
	struct ucan_priv *up = FUNC6(netdev);
	struct can_frame *cf = (struct can_frame *)skb->data;

	/* check skb */
	if (FUNC1(netdev, skb))
		return NETDEV_TX_OK;

	/* allocate a context and slow down tx path, if fifo state is low */
	context = FUNC12(up);
	echo_index = context - up->context_array;

	if (FUNC0(!context))
		return NETDEV_TX_BUSY;

	/* prepare urb for transmission */
	urb = FUNC14(up, context, cf, echo_index);
	if (!urb)
		goto drop;

	/* put the skb on can loopback stack */
	FUNC10(&up->echo_skb_lock, flags);
	FUNC3(skb, up->netdev, echo_index);
	FUNC11(&up->echo_skb_lock, flags);

	/* transmit it */
	FUNC16(urb, &up->tx_urbs);
	ret = FUNC18(urb, GFP_ATOMIC);

	/* cleanup urb */
	if (ret) {
		/* on error, clean up */
		FUNC19(urb);
		FUNC13(up, urb);
		if (!FUNC15(up, context))
			FUNC5(up->netdev,
				   "xmit err: failed to release context\n");

		/* remove the skb from the echo stack - this also
		 * frees the skb
		 */
		FUNC10(&up->echo_skb_lock, flags);
		FUNC2(up->netdev, echo_index);
		FUNC11(&up->echo_skb_lock, flags);

		if (ret == -ENODEV) {
			FUNC8(up->netdev);
		} else {
			FUNC7(up->netdev,
				    "xmit err: failed to submit urb %d\n",
				    ret);
			up->netdev->stats.tx_dropped++;
		}
		return NETDEV_TX_OK;
	}

	FUNC9(netdev);

	/* release ref, as we do not need the urb anymore */
	FUNC17(urb);

	return NETDEV_TX_OK;

drop:
	if (!FUNC15(up, context))
		FUNC5(up->netdev,
			   "xmit drop: failed to release context\n");
	FUNC4(skb);
	up->netdev->stats.tx_dropped++;

	return NETDEV_TX_OK;
}