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
struct netsec_priv {int dummy; } ;
struct net_device {TYPE_1__* phydev; } ;
struct TYPE_2__ {scalar_t__ link; } ;

/* Variables and functions */
 struct netsec_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct netsec_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct netsec_priv*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct net_device *ndev)
{
	struct netsec_priv *priv = FUNC0(ndev);

	if (ndev->phydev->link)
		FUNC1(priv);
	else
		FUNC2(priv);

	FUNC3(ndev->phydev);
}