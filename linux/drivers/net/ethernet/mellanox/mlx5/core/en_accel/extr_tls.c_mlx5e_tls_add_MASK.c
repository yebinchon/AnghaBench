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
typedef  int /*<<< orphan*/  u32 ;
struct tls_crypto_info {int dummy; } ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_tls_offload_context_tx {int /*<<< orphan*/  expected_seq; void* swid; } ;
struct mlx5e_tls_offload_context_rx {void* handle; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TLS_OFFLOAD_CTX_DIR_TX ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_core_dev*,void*,struct tls_crypto_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 struct mlx5e_tls_offload_context_rx* FUNC6 (struct tls_context*) ; 
 struct mlx5e_tls_offload_context_tx* FUNC7 (struct tls_context*) ; 
 int FUNC8 (void*,struct sock*,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  tls_flow ; 
 struct tls_context* FUNC10 (struct sock*) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev, struct sock *sk,
			 enum tls_offload_ctx_dir direction,
			 struct tls_crypto_info *crypto_info,
			 u32 start_offload_tcp_sn)
{
	struct mlx5e_priv *priv = FUNC9(netdev);
	struct tls_context *tls_ctx = FUNC10(sk);
	struct mlx5_core_dev *mdev = priv->mdev;
	u32 caps = FUNC5(mdev);
	int ret = -ENOMEM;
	void *flow;
	u32 swid;

	flow = FUNC3(FUNC0(tls_flow), GFP_KERNEL);
	if (!flow)
		return ret;

	ret = FUNC8(flow, sk, caps);
	if (ret)
		goto free_flow;

	ret = FUNC4(mdev, flow, crypto_info,
				      start_offload_tcp_sn, &swid,
				      direction == TLS_OFFLOAD_CTX_DIR_TX);
	if (ret < 0)
		goto free_flow;

	if (direction == TLS_OFFLOAD_CTX_DIR_TX) {
		struct mlx5e_tls_offload_context_tx *tx_ctx =
		    FUNC7(tls_ctx);

		tx_ctx->swid = FUNC1(swid);
		tx_ctx->expected_seq = start_offload_tcp_sn;
	} else {
		struct mlx5e_tls_offload_context_rx *rx_ctx =
		    FUNC6(tls_ctx);

		rx_ctx->handle = FUNC1(swid);
	}

	return 0;
free_flow:
	FUNC2(flow);
	return ret;
}