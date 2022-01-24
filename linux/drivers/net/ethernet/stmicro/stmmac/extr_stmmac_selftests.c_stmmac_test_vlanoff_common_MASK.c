#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_8__ {struct stmmac_test_priv* af_packet_priv; TYPE_2__* dev; int /*<<< orphan*/  func; void* type; } ;
struct stmmac_test_priv {int ok; int double_vlan; int vlan_id; TYPE_4__ pt; int /*<<< orphan*/  comp; struct stmmac_packet_attrs* packet; } ;
struct TYPE_6__ {int /*<<< orphan*/  vlins; } ;
struct stmmac_priv {TYPE_2__* dev; TYPE_1__ dma_cap; } ;
struct stmmac_packet_attrs {int /*<<< orphan*/  dst; } ;
struct sk_buff {void* protocol; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_8021AD ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  STMMAC_LB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct stmmac_test_priv*) ; 
 struct stmmac_test_priv* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (struct stmmac_priv*,struct stmmac_packet_attrs*) ; 
 int /*<<< orphan*/  stmmac_test_vlan_validate ; 
 int FUNC10 (TYPE_2__*,void*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,void*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct stmmac_priv *priv, bool svlan)
{
	struct stmmac_packet_attrs attr = { };
	struct stmmac_test_priv *tpriv;
	struct sk_buff *skb = NULL;
	int ret = 0;
	u16 proto;

	if (!priv->dma_cap.vlins)
		return -EOPNOTSUPP;

	tpriv = FUNC7(sizeof(*tpriv), GFP_KERNEL);
	if (!tpriv)
		return -ENOMEM;

	proto = svlan ? ETH_P_8021AD : ETH_P_8021Q;

	tpriv->ok = false;
	tpriv->double_vlan = svlan;
	FUNC5(&tpriv->comp);

	tpriv->pt.type = svlan ? FUNC4(ETH_P_8021Q) : FUNC4(ETH_P_IP);
	tpriv->pt.func = stmmac_test_vlan_validate;
	tpriv->pt.dev = priv->dev;
	tpriv->pt.af_packet_priv = tpriv;
	tpriv->packet = &attr;
	tpriv->vlan_id = 0x123;
	FUNC1(&tpriv->pt);

	ret = FUNC10(priv->dev, FUNC4(proto), tpriv->vlan_id);
	if (ret)
		goto cleanup;

	attr.dst = priv->dev->dev_addr;

	skb = FUNC9(priv, &attr);
	if (!skb) {
		ret = -ENOMEM;
		goto vlan_del;
	}

	FUNC0(skb, FUNC4(proto), tpriv->vlan_id);
	skb->protocol = FUNC4(proto);

	FUNC8(skb, 0);
	ret = FUNC2(skb);
	if (ret)
		goto vlan_del;

	FUNC12(&tpriv->comp, STMMAC_LB_TIMEOUT);
	ret = tpriv->ok ? 0 : -ETIMEDOUT;

vlan_del:
	FUNC11(priv->dev, FUNC4(proto), tpriv->vlan_id);
cleanup:
	FUNC3(&tpriv->pt);
	FUNC6(tpriv);
	return ret;
}