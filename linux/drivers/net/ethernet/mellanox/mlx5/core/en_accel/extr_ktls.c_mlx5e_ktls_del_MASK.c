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
struct tls_context {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
struct mlx5e_ktls_offload_context_tx {int /*<<< orphan*/  tisn; int /*<<< orphan*/  key_id; } ;
typedef  enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5e_ktls_offload_context_tx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5e_ktls_offload_context_tx* FUNC3 (struct tls_context*) ; 
 struct mlx5e_priv* FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
			   struct tls_context *tls_ctx,
			   enum tls_offload_ctx_dir direction)
{
	struct mlx5e_priv *priv = FUNC4(netdev);
	struct mlx5e_ktls_offload_context_tx *tx_priv =
		FUNC3(tls_ctx);

	FUNC1(priv->mdev, tx_priv->key_id);
	FUNC2(priv->mdev, tx_priv->tisn);
	FUNC0(tx_priv);
}