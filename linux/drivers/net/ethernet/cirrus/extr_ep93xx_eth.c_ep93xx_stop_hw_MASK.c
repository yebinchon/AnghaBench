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
struct ep93xx_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SELFCTL ; 
 int REG_SELFCTL_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ep93xx_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct ep93xx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ep93xx_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct ep93xx_priv *ep = FUNC1(dev);
	int i;

	FUNC4(ep, REG_SELFCTL, REG_SELFCTL_RESET);
	for (i = 0; i < 10; i++) {
		if ((FUNC3(ep, REG_SELFCTL) & REG_SELFCTL_RESET) == 0)
			break;
		FUNC0(1);
	}

	if (i == 10)
		FUNC2("hw failed to reset\n");
}