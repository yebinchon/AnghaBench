#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tx_desc {int dummy; } ;
struct rx_desc {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  alloc_len; int /*<<< orphan*/  alloc; } ;
struct TYPE_4__ {int /*<<< orphan*/  function; } ;
struct ec_bhf_priv {TYPE_3__ rx_buf; TYPE_1__ hrtimer; scalar_t__ mii_io; int /*<<< orphan*/  tx_dma_chan; TYPE_3__ tx_buf; int /*<<< orphan*/  rx_dma_chan; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int FIFO_SIZE ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 scalar_t__ MII_MAC_FILT_FLAG ; 
 struct device* FUNC0 (struct ec_bhf_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ec_bhf_priv*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ec_bhf_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct ec_bhf_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct ec_bhf_priv*) ; 
 int /*<<< orphan*/  ec_bhf_timer_fun ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct ec_bhf_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  polling_frequency ; 

__attribute__((used)) static int FUNC12(struct net_device *net_dev)
{
	struct ec_bhf_priv *priv = FUNC10(net_dev);
	struct device *dev = FUNC0(priv);
	int err = 0;

	FUNC4(priv);

	err = FUNC3(priv, &priv->rx_buf, priv->rx_dma_chan,
				   FIFO_SIZE * sizeof(struct rx_desc));
	if (err) {
		FUNC1(dev, "Failed to allocate rx buffer\n");
		goto out;
	}
	FUNC5(priv);

	err = FUNC3(priv, &priv->tx_buf, priv->tx_dma_chan,
				   FIFO_SIZE * sizeof(struct tx_desc));
	if (err) {
		FUNC1(dev, "Failed to allocate tx buffer\n");
		goto error_rx_free;
	}
	FUNC9(0, priv->mii_io + MII_MAC_FILT_FLAG);
	FUNC6(priv);

	FUNC11(net_dev);

	FUNC7(&priv->hrtimer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	priv->hrtimer.function = ec_bhf_timer_fun;
	FUNC8(&priv->hrtimer, polling_frequency, HRTIMER_MODE_REL);

	return 0;

error_rx_free:
	FUNC2(dev, priv->rx_buf.alloc_len, priv->rx_buf.alloc,
			  priv->rx_buf.alloc_len);
out:
	return err;
}