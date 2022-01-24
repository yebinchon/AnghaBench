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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_tls_offload_context_rx {int /*<<< orphan*/  handle; } ;
struct mlx5e_priv {TYPE_2__* tls; int /*<<< orphan*/  mdev; } ;
typedef  enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;
struct TYPE_3__ {int /*<<< orphan*/  rx_tls_resync_reply; } ;
struct TYPE_4__ {TYPE_1__ sw_stats; } ;

/* Variables and functions */
 int EINVAL ; 
 int TLS_OFFLOAD_CTX_DIR_RX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5e_tls_offload_context_rx* FUNC4 (struct tls_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC6 (struct net_device*) ; 
 struct tls_context* FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev, struct sock *sk,
			    u32 seq, u8 *rcd_sn_data,
			    enum tls_offload_ctx_dir direction)
{
	struct tls_context *tls_ctx = FUNC7(sk);
	struct mlx5e_priv *priv = FUNC6(netdev);
	struct mlx5e_tls_offload_context_rx *rx_ctx;
	u64 rcd_sn = *(u64 *)rcd_sn_data;

	if (FUNC0(direction != TLS_OFFLOAD_CTX_DIR_RX))
		return -EINVAL;
	rx_ctx = FUNC4(tls_ctx);

	FUNC5(netdev, "resyncing seq %d rcd %lld\n", seq,
		    FUNC2(rcd_sn));
	FUNC3(priv->mdev, rx_ctx->handle, seq, rcd_sn);
	FUNC1(&priv->tls->sw_stats.rx_tls_resync_reply);

	return 0;
}