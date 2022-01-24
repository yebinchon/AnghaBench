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
struct rk_priv_data {scalar_t__ phy_reset; int /*<<< orphan*/  grf; } ;

/* Variables and functions */
 int /*<<< orphan*/  RK_GRF_MACPHY_CON0 ; 
 int /*<<< orphan*/  RK_MACPHY_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct rk_priv_data *priv)
{
	FUNC0(priv->grf, RK_GRF_MACPHY_CON0, RK_MACPHY_DISABLE);
	if (priv->phy_reset)
		FUNC1(priv->phy_reset);
}