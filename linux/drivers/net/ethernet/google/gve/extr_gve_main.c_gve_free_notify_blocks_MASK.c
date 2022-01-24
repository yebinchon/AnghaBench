#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gve_priv {int num_ntfy_blks; size_t mgmt_msix_idx; TYPE_2__* msix_vectors; TYPE_1__* pdev; struct gve_priv* ntfy_blocks; int /*<<< orphan*/  ntfy_block_bus; } ;
struct gve_notify_block {int num_ntfy_blks; size_t mgmt_msix_idx; TYPE_2__* msix_vectors; TYPE_1__* pdev; struct gve_notify_block* ntfy_blocks; int /*<<< orphan*/  ntfy_block_bus; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,struct gve_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gve_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct gve_priv *priv)
{
	int i;

	/* Free the irqs */
	for (i = 0; i < priv->num_ntfy_blks; i++) {
		struct gve_notify_block *block = &priv->ntfy_blocks[i];
		int msix_idx = i;

		FUNC2(priv->msix_vectors[msix_idx].vector,
				      NULL);
		FUNC1(priv->msix_vectors[msix_idx].vector, block);
	}
	FUNC0(&priv->pdev->dev,
			  priv->num_ntfy_blks * sizeof(*priv->ntfy_blocks),
			  priv->ntfy_blocks, priv->ntfy_block_bus);
	priv->ntfy_blocks = NULL;
	FUNC1(priv->msix_vectors[priv->mgmt_msix_idx].vector, priv);
	FUNC4(priv->pdev);
	FUNC3(priv->msix_vectors);
	priv->msix_vectors = NULL;
}