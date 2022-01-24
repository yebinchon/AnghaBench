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
struct xgbe_prv_data {scalar_t__ vxlan_force_disable; int /*<<< orphan*/  vxlan_features; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC2(struct xgbe_prv_data *pdata)
{
	/* VXLAN acceleration desired? */
	if (!pdata->vxlan_features)
		return;

	/* VXLAN acceleration possible? */
	if (pdata->vxlan_force_disable)
		return;

	FUNC0(pdata);

	FUNC1(pdata);
}