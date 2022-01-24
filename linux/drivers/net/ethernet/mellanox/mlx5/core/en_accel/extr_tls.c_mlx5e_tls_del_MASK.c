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
struct tls_context {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; } ;
typedef  enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;
struct TYPE_4__ {int /*<<< orphan*/  handle; } ;
struct TYPE_3__ {int /*<<< orphan*/  swid; } ;

/* Variables and functions */
 int TLS_OFFLOAD_CTX_DIR_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int) ; 
 TYPE_2__* FUNC1 (struct tls_context*) ; 
 TYPE_1__* FUNC2 (struct tls_context*) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct net_device *netdev,
			  struct tls_context *tls_ctx,
			  enum tls_offload_ctx_dir direction)
{
	struct mlx5e_priv *priv = FUNC3(netdev);
	unsigned int handle;

	handle = FUNC4((direction == TLS_OFFLOAD_CTX_DIR_TX) ?
		       FUNC2(tls_ctx)->swid :
		       FUNC1(tls_ctx)->handle);

	FUNC0(priv->mdev, handle,
				direction == TLS_OFFLOAD_CTX_DIR_TX);
}