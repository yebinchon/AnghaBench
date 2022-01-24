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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct w5100_priv {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {scalar_t__ rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  S0_CR_RECV ; 
 int /*<<< orphan*/  FUNC0 (struct w5100_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct w5100_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC4 (struct net_device*,scalar_t__) ; 
 struct w5100_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct w5100_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct w5100_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct w5100_priv*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct w5100_priv*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *FUNC12(struct net_device *ndev)
{
	struct w5100_priv *priv = FUNC5(ndev);
	struct sk_buff *skb;
	u16 rx_len;
	u16 offset;
	u8 header[2];
	u16 rx_buf_len = FUNC9(priv, FUNC1(priv));

	if (rx_buf_len == 0)
		return NULL;

	offset = FUNC9(priv, FUNC0(priv));
	FUNC10(priv, offset, header, 2);
	rx_len = FUNC3(header) - 2;

	skb = FUNC4(ndev, rx_len);
	if (FUNC7(!skb)) {
		FUNC11(priv, FUNC0(priv), offset + rx_buf_len);
		FUNC8(priv, S0_CR_RECV);
		ndev->stats.rx_dropped++;
		return NULL;
	}

	FUNC6(skb, rx_len);
	FUNC10(priv, offset + 2, skb->data, rx_len);
	FUNC11(priv, FUNC0(priv), offset + 2 + rx_len);
	FUNC8(priv, S0_CR_RECV);
	skb->protocol = FUNC2(skb, ndev);

	ndev->stats.rx_packets++;
	ndev->stats.rx_bytes += rx_len;

	return skb;
}