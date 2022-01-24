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
typedef  int /*<<< orphan*/  u16 ;
struct rcar_csi2 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int PHTW_CWEN ; 
 int PHTW_DWEN ; 
 int /*<<< orphan*/  PHTW_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct rcar_csi2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rcar_csi2*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct rcar_csi2 *priv, u16 data, u16 code)
{
	unsigned int timeout;

	FUNC4(priv, PHTW_REG,
		    PHTW_DWEN | FUNC1(data) |
		    PHTW_CWEN | FUNC0(code));

	/* Wait for DWEN and CWEN to be cleared by hardware. */
	for (timeout = 0; timeout <= 20; timeout++) {
		if (!(FUNC3(priv, PHTW_REG) & (PHTW_DWEN | PHTW_CWEN)))
			return 0;

		FUNC5(1000, 2000);
	}

	FUNC2(priv->dev, "Timeout waiting for PHTW_DWEN and/or PHTW_CWEN\n");

	return -ETIMEDOUT;
}