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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_EMAD_EH_DMAC ; 
 int /*<<< orphan*/  MLXSW_EMAD_EH_ETHERTYPE ; 
 int /*<<< orphan*/  MLXSW_EMAD_EH_MLX_PROTO ; 
 int /*<<< orphan*/  MLXSW_EMAD_EH_PROTO_VERSION ; 
 int /*<<< orphan*/  MLXSW_EMAD_EH_SMAC ; 
 int /*<<< orphan*/  MLXSW_EMAD_ETH_HDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
	char *eth_hdr = FUNC5(skb, MLXSW_EMAD_ETH_HDR_LEN);

	FUNC0(eth_hdr, MLXSW_EMAD_EH_DMAC);
	FUNC3(eth_hdr, MLXSW_EMAD_EH_SMAC);
	FUNC1(eth_hdr, MLXSW_EMAD_EH_ETHERTYPE);
	FUNC2(eth_hdr, MLXSW_EMAD_EH_MLX_PROTO);
	FUNC4(eth_hdr, MLXSW_EMAD_EH_PROTO_VERSION);

	FUNC6(skb);

	return 0;
}