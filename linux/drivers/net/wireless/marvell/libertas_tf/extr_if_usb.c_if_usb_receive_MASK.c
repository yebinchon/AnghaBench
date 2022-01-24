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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct urb {int actual_length; int status; struct if_usb_card* context; } ;
struct sk_buff {int /*<<< orphan*/ * data; } ;
struct lbtf_private {int dummy; } ;
struct if_usb_card {TYPE_1__* udev; struct lbtf_private* priv; struct sk_buff* rx_skb; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  CMD_TYPE_DATA 130 
#define  CMD_TYPE_INDICATION 129 
#define  CMD_TYPE_REQUEST 128 
 int /*<<< orphan*/  LBTF_DEB_USB ; 
 int LBTF_EVENT_BCN_SENT ; 
 int /*<<< orphan*/  FUNC0 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct lbtf_private*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (struct lbtf_private*,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,struct sk_buff*,struct if_usb_card*,struct lbtf_private*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct sk_buff*,struct if_usb_card*,struct lbtf_private*) ; 

__attribute__((used)) static void FUNC10(struct urb *urb)
{
	struct if_usb_card *cardp = urb->context;
	struct sk_buff *skb = cardp->rx_skb;
	struct lbtf_private *priv = cardp->priv;
	int recvlength = urb->actual_length;
	uint8_t *recvbuff = NULL;
	uint32_t recvtype = 0;
	__le32 *pkt = (__le32 *) skb->data;

	FUNC3(LBTF_DEB_USB);

	if (recvlength) {
		if (urb->status) {
			FUNC5(&cardp->udev->dev, "RX URB failed: %d\n",
				     urb->status);
			FUNC1(skb);
			goto setup_for_next;
		}

		recvbuff = skb->data;
		recvtype = FUNC7(pkt[0]);
		FUNC5(&cardp->udev->dev,
			    "Recv length = 0x%x, Recv type = 0x%X\n",
			    recvlength, recvtype);
	} else if (urb->status) {
		FUNC1(skb);
		FUNC4(LBTF_DEB_USB);
		return;
	}

	switch (recvtype) {
	case CMD_TYPE_DATA:
		FUNC9(recvlength, skb, cardp, priv);
		break;

	case CMD_TYPE_REQUEST:
		FUNC8(recvlength, recvbuff, skb, cardp, priv);
		break;

	case CMD_TYPE_INDICATION:
	{
		/* Event cause handling */
		u32 event_cause = FUNC7(pkt[1]);
		FUNC5(&cardp->udev->dev, "**EVENT** 0x%X\n",
			event_cause);

		/* Icky undocumented magic special case */
		if (event_cause & 0xffff0000) {
			u16 tmp;
			u8 retrycnt;
			u8 failure;

			tmp = event_cause >> 16;
			retrycnt = tmp & 0x00ff;
			failure = (tmp & 0xff00) >> 8;
			FUNC6(priv, retrycnt, failure);
		} else if (event_cause == LBTF_EVENT_BCN_SENT)
			FUNC2(priv);
		else
			FUNC5(&cardp->udev->dev,
			       "Unsupported notification %d received\n",
			       event_cause);
		FUNC1(skb);
		break;
	}
	default:
		FUNC5(&cardp->udev->dev,
			"libertastf: unknown command type 0x%X\n", recvtype);
		FUNC1(skb);
		break;
	}

setup_for_next:
	FUNC0(cardp);
	FUNC4(LBTF_DEB_USB);
}