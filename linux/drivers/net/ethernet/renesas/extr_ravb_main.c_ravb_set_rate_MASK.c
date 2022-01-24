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
struct ravb_private {int speed; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GECMR ; 
 int /*<<< orphan*/  GECMR_SPEED_100 ; 
 int /*<<< orphan*/  GECMR_SPEED_1000 ; 
 struct ravb_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct net_device *ndev)
{
	struct ravb_private *priv = FUNC0(ndev);

	switch (priv->speed) {
	case 100:		/* 100BASE */
		FUNC1(ndev, GECMR_SPEED_100, GECMR);
		break;
	case 1000:		/* 1000BASE */
		FUNC1(ndev, GECMR_SPEED_1000, GECMR);
		break;
	}
}