#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dpcon_attr {int /*<<< orphan*/  qbman_ch_id; int /*<<< orphan*/  id; } ;
struct dpaa2_eth_priv {int /*<<< orphan*/  mc_io; TYPE_2__* net_dev; } ;
struct dpaa2_eth_channel {TYPE_3__* dpcon; struct dpaa2_eth_priv* priv; int /*<<< orphan*/  ch_id; int /*<<< orphan*/  dpcon_id; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  mc_handle; } ;
struct TYPE_7__ {struct device* parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;

/* Variables and functions */
 struct dpaa2_eth_channel* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dpcon_attr*) ; 
 int /*<<< orphan*/  FUNC5 (struct dpaa2_eth_priv*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct dpaa2_eth_channel*) ; 
 struct dpaa2_eth_channel* FUNC7 (int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (struct dpaa2_eth_priv*) ; 

__attribute__((used)) static struct dpaa2_eth_channel *
FUNC9(struct dpaa2_eth_priv *priv)
{
	struct dpaa2_eth_channel *channel;
	struct dpcon_attr attr;
	struct device *dev = priv->net_dev->dev.parent;
	int err;

	channel = FUNC7(sizeof(*channel), GFP_KERNEL);
	if (!channel)
		return NULL;

	channel->dpcon = FUNC8(priv);
	if (FUNC1(channel->dpcon)) {
		err = FUNC2(channel->dpcon);
		goto err_setup;
	}

	err = FUNC4(priv->mc_io, 0, channel->dpcon->mc_handle,
				   &attr);
	if (err) {
		FUNC3(dev, "dpcon_get_attributes() failed\n");
		goto err_get_attr;
	}

	channel->dpcon_id = attr.id;
	channel->ch_id = attr.qbman_ch_id;
	channel->priv = priv;

	return channel;

err_get_attr:
	FUNC5(priv, channel->dpcon);
err_setup:
	FUNC6(channel);
	return FUNC0(err);
}