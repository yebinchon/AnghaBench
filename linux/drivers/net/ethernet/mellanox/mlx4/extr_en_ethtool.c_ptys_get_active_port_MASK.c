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
typedef  int u32 ;
struct mlx4_ptys_reg {int /*<<< orphan*/  eth_proto_cap; int /*<<< orphan*/  eth_proto_oper; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_1000BASE_CX_SGMII ; 
 int /*<<< orphan*/  MLX4_1000BASE_KX ; 
 int /*<<< orphan*/  MLX4_1000BASE_T ; 
 int /*<<< orphan*/  MLX4_100BASE_TX ; 
 int /*<<< orphan*/  MLX4_10GBASE_CR ; 
 int /*<<< orphan*/  MLX4_10GBASE_KR ; 
 int /*<<< orphan*/  MLX4_10GBASE_KX4 ; 
 int /*<<< orphan*/  MLX4_10GBASE_SR ; 
 int /*<<< orphan*/  MLX4_10GBASE_T ; 
 int /*<<< orphan*/  MLX4_20GBASE_KR2 ; 
 int /*<<< orphan*/  MLX4_40GBASE_CR4 ; 
 int /*<<< orphan*/  MLX4_40GBASE_KR4 ; 
 int /*<<< orphan*/  MLX4_40GBASE_SR4 ; 
 int /*<<< orphan*/  MLX4_56GBASE_CR4 ; 
 int /*<<< orphan*/  MLX4_56GBASE_KR4 ; 
 int /*<<< orphan*/  MLX4_56GBASE_SR4 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PORT_DA ; 
 int PORT_FIBRE ; 
 int PORT_NONE ; 
 int PORT_OTHER ; 
 int PORT_TP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC2(struct mlx4_ptys_reg *ptys_reg)
{
	u32 eth_proto = FUNC1(ptys_reg->eth_proto_oper);

	if (!eth_proto) /* link down */
		eth_proto = FUNC1(ptys_reg->eth_proto_cap);

	if (eth_proto & (FUNC0(MLX4_10GBASE_T)
			 | FUNC0(MLX4_1000BASE_T)
			 | FUNC0(MLX4_100BASE_TX))) {
			return PORT_TP;
	}

	if (eth_proto & (FUNC0(MLX4_10GBASE_SR)
			 | FUNC0(MLX4_56GBASE_SR4)
			 | FUNC0(MLX4_40GBASE_SR4)
			 | FUNC0(MLX4_1000BASE_CX_SGMII))) {
			return PORT_FIBRE;
	}

	if (eth_proto & (FUNC0(MLX4_10GBASE_CR)
			 | FUNC0(MLX4_56GBASE_CR4)
			 | FUNC0(MLX4_40GBASE_CR4))) {
			return PORT_DA;
	}

	if (eth_proto & (FUNC0(MLX4_56GBASE_KR4)
			 | FUNC0(MLX4_40GBASE_KR4)
			 | FUNC0(MLX4_20GBASE_KR2)
			 | FUNC0(MLX4_10GBASE_KR)
			 | FUNC0(MLX4_10GBASE_KX4)
			 | FUNC0(MLX4_1000BASE_KX))) {
			return PORT_NONE;
	}
	return PORT_OTHER;
}