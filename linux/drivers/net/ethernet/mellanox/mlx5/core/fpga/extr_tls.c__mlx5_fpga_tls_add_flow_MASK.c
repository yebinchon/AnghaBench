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
struct mlx5_setup_stream_context {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_TLS_COMMAND_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_setup_stream_context*) ; 
 struct mlx5_setup_stream_context* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*) ; 
 int FUNC5 (void*,int /*<<< orphan*/ ,struct tls_crypto_info*) ; 
 int FUNC6 (struct mlx5_core_dev*,struct mlx5_setup_stream_context*) ; 
 int /*<<< orphan*/  tls_cmd ; 

__attribute__((used)) static int FUNC7(struct mlx5_core_dev *mdev, void *flow,
				   struct tls_crypto_info *crypto_info,
				   u32 swid, u32 tcp_sn)
{
	u32 caps = FUNC3(mdev);
	struct mlx5_setup_stream_context *ctx;
	int ret = -ENOMEM;
	size_t cmd_size;
	void *cmd;

	cmd_size = MLX5_TLS_COMMAND_SIZE + sizeof(*ctx);
	ctx = FUNC2(cmd_size, GFP_KERNEL);
	if (!ctx)
		goto out;

	cmd = ctx + 1;
	ret = FUNC5(cmd, caps, crypto_info);
	if (ret)
		goto free_ctx;

	FUNC4(flow, cmd);

	FUNC0(tls_cmd, cmd, swid, swid);
	FUNC0(tls_cmd, cmd, tcp_sn, tcp_sn);

	return FUNC6(mdev, ctx);

free_ctx:
	FUNC1(ctx);
out:
	return ret;
}