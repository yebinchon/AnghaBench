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
struct rk_priv_data {int /*<<< orphan*/  grf; } ;

/* Variables and functions */
 int /*<<< orphan*/  RK3328_GRF_MACPHY_CON1 ; 
 int /*<<< orphan*/  RK3328_MACPHY_RMII_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct rk_priv_data *priv)
{
	FUNC0(priv->grf, RK3328_GRF_MACPHY_CON1,
		     RK3328_MACPHY_RMII_MODE);
}