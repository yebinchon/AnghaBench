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
typedef  int /*<<< orphan*/  u32 ;
struct w5100_priv {TYPE_1__* ops; } ;
struct TYPE_2__ {int chip_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ RTR_DEFAULT ; 
#define  W5100 130 
 int /*<<< orphan*/  W5100_RTR ; 
#define  W5200 129 
#define  W5500 128 
 int /*<<< orphan*/  W5500_RTR ; 
 int /*<<< orphan*/  FUNC0 (struct w5100_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct w5100_priv*) ; 
 scalar_t__ FUNC2 (struct w5100_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct w5100_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct w5100_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct w5100_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct w5100_priv*) ; 

__attribute__((used)) static int FUNC7(struct w5100_priv *priv)
{
	u32 rtr;

	FUNC3(priv);

	FUNC0(priv);
	FUNC4(priv);

	switch (priv->ops->chip_id) {
	case W5100:
		FUNC1(priv);
		rtr = W5100_RTR;
		break;
	case W5200:
		FUNC5(priv);
		rtr = W5100_RTR;
		break;
	case W5500:
		FUNC6(priv);
		rtr = W5500_RTR;
		break;
	default:
		return -EINVAL;
	}

	if (FUNC2(priv, rtr) != RTR_DEFAULT)
		return -ENODEV;

	return 0;
}