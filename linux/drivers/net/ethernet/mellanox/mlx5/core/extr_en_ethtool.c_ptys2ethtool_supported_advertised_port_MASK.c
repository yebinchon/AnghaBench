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
typedef  int u8 ;
typedef  int u32 ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUI ; 
 int /*<<< orphan*/  BNC ; 
 int /*<<< orphan*/  Backplane ; 
 int /*<<< orphan*/  FIBRE ; 
 int /*<<< orphan*/  MII ; 
 int /*<<< orphan*/  MLX5E_1000BASE_CX_SGMII ; 
 int /*<<< orphan*/  MLX5E_1000BASE_KX ; 
 int /*<<< orphan*/  MLX5E_100GBASE_KR4 ; 
 int /*<<< orphan*/  MLX5E_100GBASE_SR4 ; 
 int /*<<< orphan*/  MLX5E_10GBASE_CR ; 
 int /*<<< orphan*/  MLX5E_10GBASE_KR ; 
 int /*<<< orphan*/  MLX5E_10GBASE_KX4 ; 
 int /*<<< orphan*/  MLX5E_10GBASE_SR ; 
 int /*<<< orphan*/  MLX5E_40GBASE_CR4 ; 
 int /*<<< orphan*/  MLX5E_40GBASE_KR4 ; 
 int /*<<< orphan*/  MLX5E_40GBASE_SR4 ; 
 int MLX5E_CONNECTOR_TYPE_NUMBER ; 
#define  MLX5E_PORT_AUI 135 
#define  MLX5E_PORT_BNC 134 
#define  MLX5E_PORT_DA 133 
#define  MLX5E_PORT_FIBRE 132 
#define  MLX5E_PORT_MII 131 
#define  MLX5E_PORT_NONE 130 
#define  MLX5E_PORT_OTHER 129 
#define  MLX5E_PORT_TP 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TP ; 
 int /*<<< orphan*/  advertising ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  supported ; 

__attribute__((used)) static void FUNC2(struct ethtool_link_ksettings *link_ksettings,
						   u32 eth_proto_cap,
						   u8 connector_type)
{
	if (!connector_type || connector_type >= MLX5E_CONNECTOR_TYPE_NUMBER) {
		if (eth_proto_cap & (FUNC0(MLX5E_10GBASE_CR)
				   | FUNC0(MLX5E_10GBASE_SR)
				   | FUNC0(MLX5E_40GBASE_CR4)
				   | FUNC0(MLX5E_40GBASE_SR4)
				   | FUNC0(MLX5E_100GBASE_SR4)
				   | FUNC0(MLX5E_1000BASE_CX_SGMII))) {
			FUNC1(link_ksettings,
							     supported,
							     FIBRE);
			FUNC1(link_ksettings,
							     advertising,
							     FIBRE);
		}

		if (eth_proto_cap & (FUNC0(MLX5E_100GBASE_KR4)
				   | FUNC0(MLX5E_40GBASE_KR4)
				   | FUNC0(MLX5E_10GBASE_KR)
				   | FUNC0(MLX5E_10GBASE_KX4)
				   | FUNC0(MLX5E_1000BASE_KX))) {
			FUNC1(link_ksettings,
							     supported,
							     Backplane);
			FUNC1(link_ksettings,
							     advertising,
							     Backplane);
		}
		return;
	}

	switch (connector_type) {
	case MLX5E_PORT_TP:
		FUNC1(link_ksettings,
						     supported, TP);
		FUNC1(link_ksettings,
						     advertising, TP);
		break;
	case MLX5E_PORT_AUI:
		FUNC1(link_ksettings,
						     supported, AUI);
		FUNC1(link_ksettings,
						     advertising, AUI);
		break;
	case MLX5E_PORT_BNC:
		FUNC1(link_ksettings,
						     supported, BNC);
		FUNC1(link_ksettings,
						     advertising, BNC);
		break;
	case MLX5E_PORT_MII:
		FUNC1(link_ksettings,
						     supported, MII);
		FUNC1(link_ksettings,
						     advertising, MII);
		break;
	case MLX5E_PORT_FIBRE:
		FUNC1(link_ksettings,
						     supported, FIBRE);
		FUNC1(link_ksettings,
						     advertising, FIBRE);
		break;
	case MLX5E_PORT_DA:
		FUNC1(link_ksettings,
						     supported, Backplane);
		FUNC1(link_ksettings,
						     advertising, Backplane);
		break;
	case MLX5E_PORT_NONE:
	case MLX5E_PORT_OTHER:
	default:
		break;
	}
}