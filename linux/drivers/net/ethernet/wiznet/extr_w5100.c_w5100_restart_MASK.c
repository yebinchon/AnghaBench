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
struct w5100_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 struct w5100_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct w5100_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct w5100_priv*) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct w5100_priv *priv = FUNC0(ndev);

	FUNC1(ndev);
	FUNC4(priv);
	FUNC5(priv);
	ndev->stats.tx_errors++;
	FUNC2(ndev);
	FUNC3(ndev);
}