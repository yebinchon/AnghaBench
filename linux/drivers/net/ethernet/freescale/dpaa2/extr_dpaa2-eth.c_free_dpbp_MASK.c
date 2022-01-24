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
struct dpaa2_eth_priv {TYPE_1__* dpbp_dev; int /*<<< orphan*/  mc_io; } ;
struct TYPE_2__ {int /*<<< orphan*/  mc_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct dpaa2_eth_priv *priv)
{
	FUNC2(priv);
	FUNC1(priv->mc_io, 0, priv->dpbp_dev->mc_handle);
	FUNC0(priv->mc_io, 0, priv->dpbp_dev->mc_handle);
	FUNC3(priv->dpbp_dev);
}