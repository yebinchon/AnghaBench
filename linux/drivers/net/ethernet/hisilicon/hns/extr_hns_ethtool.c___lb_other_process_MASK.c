#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {unsigned int len; int* data; struct net_device* dev; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_6__ {unsigned int rx_bytes; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_packets; } ;
struct net_device {TYPE_3__ stats; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {struct net_device* dev; } ;
struct hns_nic_ring_data {int /*<<< orphan*/  queue_index; TYPE_2__ napi; struct hnae_ring* ring; } ;
struct hns_nic_priv {TYPE_1__* ae_handle; int /*<<< orphan*/  enet_ver; } ;
struct hnae_ring {int dummy; } ;
struct TYPE_4__ {scalar_t__ port_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HNAE_PORT_SERVICE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct hnae_ring*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int,unsigned int) ; 
 struct netdev_queue* FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct hns_nic_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 

__attribute__((used)) static void FUNC11(struct hns_nic_ring_data *ring_data,
			       struct sk_buff *skb)
{
	struct net_device *ndev;
	struct hns_nic_priv *priv;
	struct hnae_ring *ring;
	struct netdev_queue *dev_queue;
	struct sk_buff *new_skb;
	unsigned int frame_size;
	int check_ok;
	u32 i;
	char buff[33]; /* 32B data and the last character '\0' */

	if (!ring_data) { /* Just for doing create frame*/
		ndev = skb->dev;
		priv = FUNC6(ndev);

		frame_size = skb->len;
		FUNC4(skb->data, 0xFF, frame_size);
		if ((!FUNC0(priv->enet_ver)) &&
		    (priv->ae_handle->port_type == HNAE_PORT_SERVICE)) {
			FUNC3(skb->data, ndev->dev_addr, 6);
			skb->data[5] += 0x1f;
		}

		frame_size &= ~1ul;
		FUNC4(&skb->data[frame_size / 2], 0xAA, frame_size / 2 - 1);
		FUNC4(&skb->data[frame_size / 2 + 10], 0xBE,
		       frame_size / 2 - 11);
		FUNC4(&skb->data[frame_size / 2 + 12], 0xAF,
		       frame_size / 2 - 13);
		return;
	}

	ring = ring_data->ring;
	ndev = ring_data->napi.dev;
	if (FUNC2(ring)) { /* for tx queue reset*/
		dev_queue = FUNC5(ndev, ring_data->queue_index);
		FUNC7(dev_queue);
		return;
	}

	frame_size = skb->len;
	frame_size &= ~1ul;
	/* for mutl buffer*/
	new_skb = FUNC9(skb, GFP_ATOMIC);
	FUNC1(skb);
	skb = new_skb;

	check_ok = 0;
	if (*(skb->data + 10) == 0xFF) { /* for rx check frame*/
		if ((*(skb->data + frame_size / 2 + 10) == 0xBE) &&
		    (*(skb->data + frame_size / 2 + 12) == 0xAF))
			check_ok = 1;
	}

	if (check_ok) {
		ndev->stats.rx_packets++;
		ndev->stats.rx_bytes += skb->len;
	} else {
		ndev->stats.rx_frame_errors++;
		for (i = 0; i < skb->len; i++) {
			FUNC10(buff + i % 16 * 2, 3, /* tailing \0*/
				 "%02x", *(skb->data + i));
			if ((i % 16 == 15) || (i == skb->len - 1))
				FUNC8("%s\n", buff);
		}
	}
	FUNC1(skb);
}