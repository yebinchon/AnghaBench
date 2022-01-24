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
struct TYPE_8__ {struct stmmac_test_priv* af_packet_priv; TYPE_2__* dev; int /*<<< orphan*/  func; int /*<<< orphan*/  type; } ;
struct stmmac_test_priv {int ok; int double_vlan; int vlan_id; TYPE_4__ pt; int /*<<< orphan*/  comp; struct stmmac_packet_attrs* packet; } ;
struct TYPE_6__ {int /*<<< orphan*/  vlhash; } ;
struct stmmac_priv {TYPE_2__* dev; TYPE_1__ dma_cap; } ;
struct stmmac_packet_attrs {int vlan; int vlan_id_out; int sport; int dport; int /*<<< orphan*/  dst; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ETH_P_8021AD ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  STMMAC_LB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct stmmac_test_priv*) ; 
 struct stmmac_test_priv* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (struct stmmac_priv*,struct stmmac_packet_attrs*) ; 
 int /*<<< orphan*/  stmmac_test_vlan_validate ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct stmmac_priv *priv)
{
	struct stmmac_packet_attrs attr = { };
	struct stmmac_test_priv *tpriv;
	struct sk_buff *skb = NULL;
	int ret = 0, i;

	if (!priv->dma_cap.vlhash)
		return -EOPNOTSUPP;

	tpriv = FUNC6(sizeof(*tpriv), GFP_KERNEL);
	if (!tpriv)
		return -ENOMEM;

	tpriv->ok = false;
	tpriv->double_vlan = true;
	FUNC4(&tpriv->comp);

	tpriv->pt.type = FUNC3(ETH_P_8021Q);
	tpriv->pt.func = stmmac_test_vlan_validate;
	tpriv->pt.dev = priv->dev;
	tpriv->pt.af_packet_priv = tpriv;
	tpriv->packet = &attr;

	/*
	 * As we use HASH filtering, false positives may appear. This is a
	 * specially chosen ID so that adjacent IDs (+4) have different
	 * HASH values.
	 */
	tpriv->vlan_id = 0x123;
	FUNC0(&tpriv->pt);

	ret = FUNC9(priv->dev, FUNC3(ETH_P_8021AD), tpriv->vlan_id);
	if (ret)
		goto cleanup;

	for (i = 0; i < 4; i++) {
		attr.vlan = 2;
		attr.vlan_id_out = tpriv->vlan_id + i;
		attr.dst = priv->dev->dev_addr;
		attr.sport = 9;
		attr.dport = 9;

		skb = FUNC8(priv, &attr);
		if (!skb) {
			ret = -ENOMEM;
			goto vlan_del;
		}

		FUNC7(skb, 0);
		ret = FUNC1(skb);
		if (ret)
			goto vlan_del;

		FUNC11(&tpriv->comp, STMMAC_LB_TIMEOUT);
		ret = tpriv->ok ? 0 : -ETIMEDOUT;
		if (ret && !i) {
			goto vlan_del;
		} else if (!ret && i) {
			ret = -EINVAL;
			goto vlan_del;
		} else {
			ret = 0;
		}

		tpriv->ok = false;
	}

vlan_del:
	FUNC10(priv->dev, FUNC3(ETH_P_8021AD), tpriv->vlan_id);
cleanup:
	FUNC2(&tpriv->pt);
	FUNC5(tpriv);
	return ret;
}