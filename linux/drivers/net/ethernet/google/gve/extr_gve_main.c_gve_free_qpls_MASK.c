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
struct TYPE_2__ {int /*<<< orphan*/  qpl_id_map; } ;
struct gve_priv {int /*<<< orphan*/  qpls; TYPE_1__ qpl_cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gve_priv*,int) ; 
 int FUNC1 (struct gve_priv*) ; 
 int FUNC2 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gve_priv *priv)
{
	int num_qpls = FUNC2(priv) + FUNC1(priv);
	int i;

	FUNC3(priv->qpl_cfg.qpl_id_map);

	for (i = 0; i < num_qpls; i++)
		FUNC0(priv, i);

	FUNC3(priv->qpls);
}