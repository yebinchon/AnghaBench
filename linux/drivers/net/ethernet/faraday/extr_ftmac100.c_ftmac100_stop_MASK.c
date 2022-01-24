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
struct net_device {int dummy; } ;
struct ftmac100 {int /*<<< orphan*/  irq; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftmac100*) ; 
 int /*<<< orphan*/  FUNC2 (struct ftmac100*) ; 
 int /*<<< orphan*/  FUNC3 (struct ftmac100*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ftmac100* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev)
{
	struct ftmac100 *priv = FUNC5(netdev);

	FUNC1(priv);
	FUNC6(netdev);
	FUNC4(&priv->napi);
	FUNC3(priv);
	FUNC0(priv->irq, netdev);
	FUNC2(priv);

	return 0;
}