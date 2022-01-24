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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct bcmgenet_priv {int desc_64b_en; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int /*<<< orphan*/  RBUF_64B_EN ; 
 int /*<<< orphan*/  RBUF_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 struct bcmgenet_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				netdev_features_t wanted)
{
	struct bcmgenet_priv *priv = FUNC4(dev);
	bool desc_64b_en;
	u32 tbuf_ctrl, rbuf_ctrl;

	tbuf_ctrl = FUNC2(priv);
	rbuf_ctrl = FUNC0(priv, RBUF_CTRL);

	desc_64b_en = !!(wanted & (NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM));

	/* enable 64 bytes descriptor in both directions (RBUF and TBUF) */
	if (desc_64b_en) {
		tbuf_ctrl |= RBUF_64B_EN;
		rbuf_ctrl |= RBUF_64B_EN;
	} else {
		tbuf_ctrl &= ~RBUF_64B_EN;
		rbuf_ctrl &= ~RBUF_64B_EN;
	}
	priv->desc_64b_en = desc_64b_en;

	FUNC3(priv, tbuf_ctrl);
	FUNC1(priv, rbuf_ctrl, RBUF_CTRL);

	return 0;
}