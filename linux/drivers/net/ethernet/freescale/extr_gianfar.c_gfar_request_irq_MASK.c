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
struct gfar_private {int num_grps; int /*<<< orphan*/ * gfargrp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct gfar_private *priv)
{
	int err, i, j;

	for (i = 0; i < priv->num_grps; i++) {
		err = FUNC1(&priv->gfargrp[i]);
		if (err) {
			for (j = 0; j < i; j++)
				FUNC0(&priv->gfargrp[j]);
			return err;
		}
	}

	return 0;
}