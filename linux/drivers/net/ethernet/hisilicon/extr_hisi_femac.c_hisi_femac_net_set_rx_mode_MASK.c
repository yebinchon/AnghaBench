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
struct net_device {int flags; } ;
struct hisi_femac_priv {int dummy; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int /*<<< orphan*/  FUNC0 (struct hisi_femac_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_femac_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_femac_priv*) ; 
 struct hisi_femac_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct hisi_femac_priv *priv = FUNC3(dev);

	if (dev->flags & IFF_PROMISC) {
		FUNC1(priv, true);
	} else {
		FUNC1(priv, false);
		FUNC0(priv);
		FUNC2(priv);
	}
}