#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct stmmac_test_priv* af_packet_priv; int /*<<< orphan*/  dev; int /*<<< orphan*/  func; int /*<<< orphan*/  type; } ;
struct stmmac_test_priv {int ok; TYPE_1__ pt; int /*<<< orphan*/  comp; struct stmmac_packet_attrs* packet; } ;
struct stmmac_priv {int /*<<< orphan*/  dev; } ;
struct stmmac_packet_attrs {scalar_t__ dont_wait; int /*<<< orphan*/  timeout; int /*<<< orphan*/  queue_mapping; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  STMMAC_LB_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct stmmac_test_priv*) ; 
 struct stmmac_test_priv* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (struct stmmac_priv*,struct stmmac_packet_attrs*) ; 
 int /*<<< orphan*/  stmmac_test_loopback_validate ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct stmmac_priv *priv,
				  struct stmmac_packet_attrs *attr)
{
	struct stmmac_test_priv *tpriv;
	struct sk_buff *skb = NULL;
	int ret = 0;

	tpriv = FUNC6(sizeof(*tpriv), GFP_KERNEL);
	if (!tpriv)
		return -ENOMEM;

	tpriv->ok = false;
	FUNC4(&tpriv->comp);

	tpriv->pt.type = FUNC3(ETH_P_IP);
	tpriv->pt.func = stmmac_test_loopback_validate;
	tpriv->pt.dev = priv->dev;
	tpriv->pt.af_packet_priv = tpriv;
	tpriv->packet = attr;

	if (!attr->dont_wait)
		FUNC0(&tpriv->pt);

	skb = FUNC8(priv, attr);
	if (!skb) {
		ret = -ENOMEM;
		goto cleanup;
	}

	FUNC7(skb, attr->queue_mapping);
	ret = FUNC1(skb);
	if (ret)
		goto cleanup;

	if (attr->dont_wait)
		goto cleanup;

	if (!attr->timeout)
		attr->timeout = STMMAC_LB_TIMEOUT;

	FUNC9(&tpriv->comp, attr->timeout);
	ret = tpriv->ok ? 0 : -ETIMEDOUT;

cleanup:
	if (!attr->dont_wait)
		FUNC2(&tpriv->pt);
	FUNC5(tpriv);
	return ret;
}