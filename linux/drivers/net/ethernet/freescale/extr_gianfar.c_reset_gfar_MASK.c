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
struct gfar_private {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFAR_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct gfar_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct gfar_private *priv = FUNC2(ndev);

	while (FUNC5(GFAR_RESETTING, &priv->state))
		FUNC1();

	FUNC4(ndev);
	FUNC3(ndev);

	FUNC0(GFAR_RESETTING, &priv->state);
}