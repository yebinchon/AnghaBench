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
struct netsec_priv {int /*<<< orphan*/  dev; TYPE_1__* ndev; int /*<<< orphan*/  napi; } ;
struct net_device {int /*<<< orphan*/  phydev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETSEC_REG_INTEN_CLR ; 
 int /*<<< orphan*/  NETSEC_RING_RX ; 
 int /*<<< orphan*/  NETSEC_RING_TX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct netsec_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct netsec_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct netsec_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct netsec_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct netsec_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct netsec_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct net_device *ndev)
{
	int ret;
	struct netsec_priv *priv = FUNC3(ndev);

	FUNC4(priv->ndev);
	FUNC0();

	FUNC2(&priv->napi);

	FUNC8(priv, NETSEC_REG_INTEN_CLR, ~0);
	FUNC6(priv);

	FUNC1(priv->ndev->irq, priv);

	FUNC7(priv, NETSEC_RING_TX);
	FUNC7(priv, NETSEC_RING_RX);

	FUNC10(ndev->phydev);
	FUNC9(ndev->phydev);

	ret = FUNC5(priv, false);

	FUNC11(priv->dev);

	return ret;
}