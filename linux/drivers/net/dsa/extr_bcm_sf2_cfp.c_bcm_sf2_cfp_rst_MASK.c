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
struct bcm_sf2_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_CFP_ACC ; 
 int ETIMEDOUT ; 
 int TCAM_RESET ; 
 int FUNC0 (struct bcm_sf2_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_sf2_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct bcm_sf2_priv *priv)
{
	unsigned int timeout = 1000;
	u32 reg;

	reg = FUNC0(priv, CORE_CFP_ACC);
	reg |= TCAM_RESET;
	FUNC1(priv, reg, CORE_CFP_ACC);

	do {
		reg = FUNC0(priv, CORE_CFP_ACC);
		if (!(reg & TCAM_RESET))
			break;

		FUNC2();
	} while (timeout--);

	if (!timeout)
		return -ETIMEDOUT;

	return 0;
}