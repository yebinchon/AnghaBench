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
struct gve_priv {int /*<<< orphan*/  service_task; int /*<<< orphan*/  gve_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct gve_priv *priv)
{
	FUNC0(priv);
	FUNC1(priv->gve_wq, &priv->service_task);
}