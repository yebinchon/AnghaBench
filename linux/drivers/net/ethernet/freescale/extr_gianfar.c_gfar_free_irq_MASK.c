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
struct gfar_private {int device_flags; int num_grps; int /*<<< orphan*/ * gfargrp; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int FSL_GIANFAR_DEV_HAS_MULTI_INTR ; 
 int /*<<< orphan*/  TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gfar_private *priv)
{
	int i;

	/* Free the IRQs */
	if (priv->device_flags & FSL_GIANFAR_DEV_HAS_MULTI_INTR) {
		for (i = 0; i < priv->num_grps; i++)
			FUNC0(&priv->gfargrp[i]);
	} else {
		for (i = 0; i < priv->num_grps; i++)
			FUNC1(FUNC2(&priv->gfargrp[i], TX)->irq,
				 &priv->gfargrp[i]);
	}
}