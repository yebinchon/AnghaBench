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
typedef  int u8 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct mscan_priv {TYPE_1__ can; } ;
typedef  enum can_state { ____Placeholder_can_state } can_state ;

/* Variables and functions */
 int MSCAN_CSCIF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mscan_priv* FUNC3 (struct net_device*) ; 
 int* state_map ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static enum can_state FUNC5(struct net_device *dev, u8 canrflg)
{
	struct mscan_priv *priv = FUNC3(dev);

	if (FUNC4(canrflg & MSCAN_CSCIF))
		return state_map[FUNC2(FUNC0(canrflg),
				 FUNC1(canrflg))];

	return priv->can.state;
}