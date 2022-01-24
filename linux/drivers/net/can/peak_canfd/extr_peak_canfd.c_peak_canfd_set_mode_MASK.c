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
struct peak_canfd_priv {int dummy; } ;
struct net_device {int dummy; } ;
typedef  enum can_mode { ____Placeholder_can_mode } can_mode ;

/* Variables and functions */
#define  CAN_MODE_START 128 
 int EOPNOTSUPP ; 
 struct peak_canfd_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct peak_canfd_priv*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, enum can_mode mode)
{
	struct peak_canfd_priv *priv = FUNC0(ndev);

	switch (mode) {
	case CAN_MODE_START:
		FUNC2(priv);
		FUNC1(ndev);
		break;
	default:
		return -EOPNOTSUPP;
	}

	return 0;
}