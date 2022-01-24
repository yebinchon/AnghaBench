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
struct TYPE_2__ {int /*<<< orphan*/  clock; } ;
struct ravb_private {TYPE_1__ ptp; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIC ; 
 int /*<<< orphan*/  GIS ; 
 struct ravb_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(struct net_device *ndev)
{
	struct ravb_private *priv = FUNC0(ndev);

	FUNC2(ndev, 0, GIC);
	FUNC2(ndev, 0, GIS);

	FUNC1(priv->ptp.clock);
}