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
typedef  scalar_t__ u8 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct qcauart {int tx_left; scalar_t__* tx_buffer; scalar_t__* tx_head; int /*<<< orphan*/  lock; int /*<<< orphan*/  serdev; int /*<<< orphan*/  net_dev; } ;
struct net_device_stats {int tx_bytes; } ;
struct net_device {struct net_device_stats stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ QCAFRM_MIN_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct qcauart* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t
FUNC14(struct sk_buff *skb, struct net_device *dev)
{
	struct net_device_stats *n_stats = &dev->stats;
	struct qcauart *qca = FUNC4(dev);
	u8 pad_len = 0;
	int written;
	u8 *pos;

	FUNC12(&qca->lock);

	FUNC0(qca->tx_left);

	if (!FUNC6(dev))  {
		FUNC13(&qca->lock);
		FUNC5(qca->net_dev, "xmit: iface is down\n");
		goto out;
	}

	pos = qca->tx_buffer;

	if (skb->len < QCAFRM_MIN_LEN)
		pad_len = QCAFRM_MIN_LEN - skb->len;

	pos += FUNC10(pos, skb->len + pad_len);

	FUNC2(pos, skb->data, skb->len);
	pos += skb->len;

	if (pad_len) {
		FUNC3(pos, 0, pad_len);
		pos += pad_len;
	}

	pos += FUNC9(pos);

	FUNC7(qca->net_dev);

	written = FUNC11(qca->serdev, qca->tx_buffer,
					  pos - qca->tx_buffer);
	if (written > 0) {
		qca->tx_left = (pos - qca->tx_buffer) - written;
		qca->tx_head = qca->tx_buffer + written;
		n_stats->tx_bytes += written;
	}
	FUNC13(&qca->lock);

	FUNC8(dev);
out:
	FUNC1(skb);
	return NETDEV_TX_OK;
}