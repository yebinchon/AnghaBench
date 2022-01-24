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
struct tls12_crypto_info_aes_gcm_128 {int dummy; } ;
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5e_ktls_offload_context_tx {int /*<<< orphan*/  tisn; int /*<<< orphan*/  key_id; struct tls12_crypto_info_aes_gcm_128 crypto_info; int /*<<< orphan*/  expected_seq; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  enum tls_offload_ctx_dir { ____Placeholder_tls_offload_ctx_dir } tls_offload_ctx_dir ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TLS_OFFLOAD_CTX_DIR_TX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_ktls_offload_context_tx*) ; 
 struct mlx5e_ktls_offload_context_tx* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx5_core_dev*,struct tls_crypto_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_ktls_offload_context_tx*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*,struct tls_crypto_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct tls_context*,struct mlx5e_ktls_offload_context_tx*) ; 
 struct mlx5e_priv* FUNC9 (struct net_device*) ; 
 struct tls_context* FUNC10 (struct sock*) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev, struct sock *sk,
			  enum tls_offload_ctx_dir direction,
			  struct tls_crypto_info *crypto_info,
			  u32 start_offload_tcp_sn)
{
	struct mlx5e_priv *priv = FUNC9(netdev);
	struct mlx5e_ktls_offload_context_tx *tx_priv;
	struct tls_context *tls_ctx = FUNC10(sk);
	struct mlx5_core_dev *mdev = priv->mdev;
	int err;

	if (FUNC0(direction != TLS_OFFLOAD_CTX_DIR_TX))
		return -EINVAL;

	if (FUNC0(!FUNC7(mdev, crypto_info)))
		return -EOPNOTSUPP;

	tx_priv = FUNC2(sizeof(*tx_priv), GFP_KERNEL);
	if (!tx_priv)
		return -ENOMEM;

	tx_priv->expected_seq = start_offload_tcp_sn;
	tx_priv->crypto_info  = *(struct tls12_crypto_info_aes_gcm_128 *)crypto_info;
	FUNC8(tls_ctx, tx_priv);

	/* tc and underlay_qpn values are not in use for tls tis */
	err = FUNC5(mdev, &tx_priv->tisn);
	if (err)
		goto create_tis_fail;

	err = FUNC3(mdev, crypto_info, &tx_priv->key_id);
	if (err)
		goto encryption_key_create_fail;

	FUNC6(tx_priv);

	return 0;

encryption_key_create_fail:
	FUNC4(priv->mdev, tx_priv->tisn);
create_tis_fail:
	FUNC1(tx_priv);
	return err;
}