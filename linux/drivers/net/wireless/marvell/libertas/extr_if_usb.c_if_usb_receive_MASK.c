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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int u32 ;
struct urb {int actual_length; int status; struct if_usb_card* context; } ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct lbs_private {int dummy; } ;
struct if_usb_card {TYPE_1__* udev; struct lbs_private* priv; struct sk_buff* rx_skb; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  CMD_TYPE_DATA 130 
#define  CMD_TYPE_INDICATION 129 
#define  CMD_TYPE_REQUEST 128 
 int IPFIELD_ALIGN_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct lbs_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,struct sk_buff*,struct if_usb_card*,struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct sk_buff*,struct if_usb_card*,struct lbs_private*) ; 

__attribute__((used)) static void FUNC8(struct urb *urb)
{
	struct if_usb_card *cardp = urb->context;
	struct sk_buff *skb = cardp->rx_skb;
	struct lbs_private *priv = cardp->priv;
	int recvlength = urb->actual_length;
	uint8_t *recvbuff = NULL;
	uint32_t recvtype = 0;
	__le32 *pkt = (__le32 *)(skb->data + IPFIELD_ALIGN_OFFSET);
	uint32_t event;

	if (recvlength) {
		if (urb->status) {
			FUNC2(&cardp->udev->dev, "RX URB failed: %d\n",
				     urb->status);
			FUNC1(skb);
			goto setup_for_next;
		}

		recvbuff = skb->data + IPFIELD_ALIGN_OFFSET;
		recvtype = FUNC5(pkt[0]);
		FUNC2(&cardp->udev->dev,
			    "Recv length = 0x%x, Recv type = 0x%X\n",
			    recvlength, recvtype);
	} else if (urb->status) {
		FUNC1(skb);
		return;
	}

	switch (recvtype) {
	case CMD_TYPE_DATA:
		FUNC7(recvlength, skb, cardp, priv);
		break;

	case CMD_TYPE_REQUEST:
		FUNC6(recvlength, recvbuff, skb, cardp, priv);
		break;

	case CMD_TYPE_INDICATION:
		/* Event handling */
		event = FUNC5(pkt[1]);
		FUNC2(&cardp->udev->dev, "**EVENT** 0x%X\n", event);
		FUNC1(skb);

		/* Icky undocumented magic special case */
		if (event & 0xffff0000) {
			u32 trycount = (event & 0xffff0000) >> 16;

			FUNC4(priv, trycount);
		} else
			FUNC3(priv, event & 0xFF);
		break;

	default:
		FUNC2(&cardp->udev->dev, "Unknown command type 0x%X\n",
			     recvtype);
		FUNC1(skb);
		break;
	}

setup_for_next:
	FUNC0(cardp);
}