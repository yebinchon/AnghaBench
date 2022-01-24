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
struct net_device {scalar_t__ phydev; } ;
struct hisi_femac_priv {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_ENA_PORT0 ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_femac_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_femac_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct hisi_femac_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct hisi_femac_priv *priv = FUNC3(dev);

	FUNC1(priv, IRQ_ENA_PORT0);

	if (dev->phydev)
		FUNC5(dev->phydev);

	FUNC4(dev);
	FUNC2(&priv->napi);

	FUNC0(priv);

	return 0;
}