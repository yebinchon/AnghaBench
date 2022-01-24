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
typedef  int u32 ;
struct bcm_enet_priv {int dummy; } ;

/* Variables and functions */
 int ENET_CTL_DISABLE_MASK ; 
 int /*<<< orphan*/  ENET_CTL_REG ; 
 int FUNC0 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_enet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct bcm_enet_priv *priv)
{
	int limit;
	u32 val;

	val = FUNC0(priv, ENET_CTL_REG);
	val |= ENET_CTL_DISABLE_MASK;
	FUNC1(priv, val, ENET_CTL_REG);

	limit = 1000;
	do {
		u32 val;

		val = FUNC0(priv, ENET_CTL_REG);
		if (!(val & ENET_CTL_DISABLE_MASK))
			break;
		FUNC2(1);
	} while (limit--);
}