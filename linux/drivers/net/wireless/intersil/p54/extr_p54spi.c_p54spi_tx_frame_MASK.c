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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct p54s_priv {int /*<<< orphan*/  hw; TYPE_1__* spi; } ;
struct p54_hdr {int /*<<< orphan*/  req_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  SPI_ADRS_HOST_INTERRUPTS ; 
 int /*<<< orphan*/  SPI_HOST_INT_WR_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct p54s_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct p54s_priv*) ; 
 int FUNC5 (struct p54s_priv*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct p54s_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct p54s_priv*) ; 

__attribute__((used)) static int FUNC8(struct p54s_priv *priv, struct sk_buff *skb)
{
	struct p54_hdr *hdr = (struct p54_hdr *) skb->data;
	int ret = 0;

	if (FUNC7(priv) < 0)
		return -EBUSY;

	ret = FUNC5(priv, hdr->req_id, skb->data, skb->len);
	if (ret < 0)
		goto out;

	if (!FUNC6(priv, SPI_ADRS_HOST_INTERRUPTS,
			     SPI_HOST_INT_WR_READY)) {
		FUNC1(&priv->spi->dev, "WR_READY timeout\n");
		ret = -EAGAIN;
		goto out;
	}

	FUNC3(priv, SPI_HOST_INT_WR_READY);

	if (FUNC0(skb))
		FUNC2(priv->hw, skb);
out:
	FUNC4(priv);
	return ret;
}