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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct ieee802154_hw {struct adf7242_local* priv; } ;
struct adf7242_local {scalar_t__ tx_stat; int /*<<< orphan*/  flags; TYPE_1__* spi; int /*<<< orphan*/  tx_complete; int /*<<< orphan*/  work; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_RC_CSMACA ; 
 int /*<<< orphan*/  CMD_RC_PHY_RDY ; 
 int ECOMM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FLAG_XMIT ; 
 int HZ ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct adf7242_local*) ; 
 int FUNC1 (struct adf7242_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adf7242_local*) ; 
 int FUNC3 (struct adf7242_local*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(struct ieee802154_hw *hw, struct sk_buff *skb)
{
	struct adf7242_local *lp = hw->priv;
	int ret;

	/* ensure existing instances of the IRQ handler have completed */
	FUNC7(lp->spi->irq);
	FUNC10(FLAG_XMIT, &lp->flags);
	FUNC4(&lp->work);
	FUNC9(&lp->tx_complete);
	FUNC1(lp, CMD_RC_PHY_RDY);
	FUNC0(lp);

	ret = FUNC3(lp, skb->data, skb->len);
	if (ret)
		goto err;

	ret = FUNC1(lp, CMD_RC_CSMACA);
	if (ret)
		goto err;
	FUNC8(lp->spi->irq);

	ret = FUNC11(&lp->tx_complete,
							HZ / 10);
	if (ret < 0)
		goto err;
	if (ret == 0) {
		FUNC6(&lp->spi->dev, "Timeout waiting for TX interrupt\n");
		ret = -ETIMEDOUT;
		goto err;
	}

	if (lp->tx_stat != SUCCESS) {
		FUNC6(&lp->spi->dev,
			"Error xmit: Retry count exceeded Status=0x%x\n",
			lp->tx_stat);
		ret = -ECOMM;
	} else {
		ret = 0;
	}

err:
	FUNC5(FLAG_XMIT, &lp->flags);
	FUNC2(lp);

	return ret;
}