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
struct mlx5_fpga_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5_ACCEL_TLS_AES_GCM128 ; 
 int /*<<< orphan*/  MLX5_ACCEL_TLS_AES_GCM256 ; 
 int /*<<< orphan*/  MLX5_ACCEL_TLS_IPV6 ; 
 int /*<<< orphan*/  MLX5_ACCEL_TLS_LRO ; 
 int /*<<< orphan*/  MLX5_ACCEL_TLS_RX ; 
 int /*<<< orphan*/  MLX5_ACCEL_TLS_TX ; 
 int /*<<< orphan*/  MLX5_ACCEL_TLS_V12 ; 
 int /*<<< orphan*/  MLX5_ACCEL_TLS_V13 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aes_gcm_128 ; 
 int /*<<< orphan*/  aes_gcm_256 ; 
 int /*<<< orphan*/  ipv6 ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lro ; 
 int FUNC4 (struct mlx5_fpga_device*,int,void*) ; 
 int /*<<< orphan*/  rx ; 
 int /*<<< orphan*/  tls_extended_cap ; 
 int /*<<< orphan*/  tls_v12 ; 
 int /*<<< orphan*/  tls_v13 ; 
 int /*<<< orphan*/  tx ; 

__attribute__((used)) static int FUNC5(struct mlx5_fpga_device *fdev,
				  u32 *p_caps)
{
	int err, cap_size = FUNC1(tls_extended_cap);
	u32 caps = 0;
	void *buf;

	buf = FUNC3(cap_size, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	err = FUNC4(fdev, cap_size, buf);
	if (err)
		goto out;

	if (FUNC0(tls_extended_cap, buf, tx))
		caps |= MLX5_ACCEL_TLS_TX;
	if (FUNC0(tls_extended_cap, buf, rx))
		caps |= MLX5_ACCEL_TLS_RX;
	if (FUNC0(tls_extended_cap, buf, tls_v12))
		caps |= MLX5_ACCEL_TLS_V12;
	if (FUNC0(tls_extended_cap, buf, tls_v13))
		caps |= MLX5_ACCEL_TLS_V13;
	if (FUNC0(tls_extended_cap, buf, lro))
		caps |= MLX5_ACCEL_TLS_LRO;
	if (FUNC0(tls_extended_cap, buf, ipv6))
		caps |= MLX5_ACCEL_TLS_IPV6;

	if (FUNC0(tls_extended_cap, buf, aes_gcm_128))
		caps |= MLX5_ACCEL_TLS_AES_GCM128;
	if (FUNC0(tls_extended_cap, buf, aes_gcm_256))
		caps |= MLX5_ACCEL_TLS_AES_GCM256;

	*p_caps = caps;
	err = 0;
out:
	FUNC2(buf);
	return err;
}