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
struct TYPE_2__ {int qpl_map_size; void* qpl_id_map; } ;
struct gve_priv {void* qpls; TYPE_1__ qpl_cfg; int /*<<< orphan*/  rx_pages_per_qpl; int /*<<< orphan*/  tx_pages_per_qpl; } ;

/* Variables and functions */
 int BITS_PER_BYTE ; 
 int FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct gve_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gve_priv*,int) ; 
 int FUNC3 (struct gve_priv*) ; 
 int FUNC4 (struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct gve_priv *priv)
{
	int num_qpls = FUNC4(priv) + FUNC3(priv);
	int i, j;
	int err;

	priv->qpls = FUNC6(num_qpls * sizeof(*priv->qpls), GFP_KERNEL);
	if (!priv->qpls)
		return -ENOMEM;

	for (i = 0; i < FUNC4(priv); i++) {
		err = FUNC1(priv, i,
						priv->tx_pages_per_qpl);
		if (err)
			goto free_qpls;
	}
	for (; i < num_qpls; i++) {
		err = FUNC1(priv, i,
						priv->rx_pages_per_qpl);
		if (err)
			goto free_qpls;
	}

	priv->qpl_cfg.qpl_map_size = FUNC0(num_qpls) *
				     sizeof(unsigned long) * BITS_PER_BYTE;
	priv->qpl_cfg.qpl_id_map = FUNC6(FUNC0(num_qpls) *
					    sizeof(unsigned long), GFP_KERNEL);
	if (!priv->qpl_cfg.qpl_id_map) {
		err = -ENOMEM;
		goto free_qpls;
	}

	return 0;

free_qpls:
	for (j = 0; j <= i; j++)
		FUNC2(priv, j);
	FUNC5(priv->qpls);
	return err;
}