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
struct bcm_enet_priv {int dummy; } ;

/* Variables and functions */
 int ENET_IR_MII ; 
 int /*<<< orphan*/  ENET_IR_REG ; 
 int /*<<< orphan*/  ENET_MIIDATA_REG ; 
 int FUNC0 (struct bcm_enet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_enet_priv*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct bcm_enet_priv *priv, unsigned int data)
{
	int limit;

	/* make sure mii interrupt status is cleared */
	FUNC1(priv, ENET_IR_MII, ENET_IR_REG);

	FUNC1(priv, data, ENET_MIIDATA_REG);
	FUNC3();

	/* busy wait on mii interrupt bit, with timeout */
	limit = 1000;
	do {
		if (FUNC0(priv, ENET_IR_REG) & ENET_IR_MII)
			break;
		FUNC2(1);
	} while (limit-- > 0);

	return (limit < 0) ? 1 : 0;
}