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
typedef  size_t u8 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_1000BASE_CX_SGMII ; 
 int /*<<< orphan*/  MLX5E_100GBASE_CR4 ; 
 int /*<<< orphan*/  MLX5E_100GBASE_KR4 ; 
 int /*<<< orphan*/  MLX5E_100GBASE_SR4 ; 
 int /*<<< orphan*/  MLX5E_10GBASE_CR ; 
 int /*<<< orphan*/  MLX5E_10GBASE_KR ; 
 int /*<<< orphan*/  MLX5E_10GBASE_KX4 ; 
 int /*<<< orphan*/  MLX5E_10GBASE_SR ; 
 int /*<<< orphan*/  MLX5E_40GBASE_CR4 ; 
 int /*<<< orphan*/  MLX5E_40GBASE_KR4 ; 
 int /*<<< orphan*/  MLX5E_40GBASE_SR4 ; 
 size_t MLX5E_CONNECTOR_TYPE_NUMBER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t PORT_DA ; 
 size_t PORT_FIBRE ; 
 size_t PORT_NONE ; 
 size_t PORT_OTHER ; 
 size_t* ptys2connector_type ; 

__attribute__((used)) static u8 FUNC1(u32 eth_proto, u8 connector_type)
{
	if (connector_type && connector_type < MLX5E_CONNECTOR_TYPE_NUMBER)
		return ptys2connector_type[connector_type];

	if (eth_proto &
	    (FUNC0(MLX5E_10GBASE_SR)   |
	     FUNC0(MLX5E_40GBASE_SR4)  |
	     FUNC0(MLX5E_100GBASE_SR4) |
	     FUNC0(MLX5E_1000BASE_CX_SGMII))) {
		return PORT_FIBRE;
	}

	if (eth_proto &
	    (FUNC0(MLX5E_40GBASE_CR4) |
	     FUNC0(MLX5E_10GBASE_CR)  |
	     FUNC0(MLX5E_100GBASE_CR4))) {
		return PORT_DA;
	}

	if (eth_proto &
	    (FUNC0(MLX5E_10GBASE_KX4) |
	     FUNC0(MLX5E_10GBASE_KR)  |
	     FUNC0(MLX5E_40GBASE_KR4) |
	     FUNC0(MLX5E_100GBASE_KR4))) {
		return PORT_NONE;
	}

	return PORT_OTHER;
}