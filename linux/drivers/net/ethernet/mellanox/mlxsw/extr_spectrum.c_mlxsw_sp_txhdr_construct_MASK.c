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
struct mlxsw_tx_info {int /*<<< orphan*/  local_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_TXHDR_ETH_CTL ; 
 int /*<<< orphan*/  MLXSW_TXHDR_LEN ; 
 int /*<<< orphan*/  MLXSW_TXHDR_PROTO_ETH ; 
 int /*<<< orphan*/  MLXSW_TXHDR_TYPE_CONTROL ; 
 int /*<<< orphan*/  MLXSW_TXHDR_VERSION_1 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct sk_buff *skb,
				     const struct mlxsw_tx_info *tx_info)
{
	char *txhdr = FUNC8(skb, MLXSW_TXHDR_LEN);

	FUNC0(txhdr, 0, MLXSW_TXHDR_LEN);

	FUNC7(txhdr, MLXSW_TXHDR_VERSION_1);
	FUNC2(txhdr, MLXSW_TXHDR_ETH_CTL);
	FUNC4(txhdr, MLXSW_TXHDR_PROTO_ETH);
	FUNC5(txhdr, 0);
	FUNC1(txhdr, 1);
	FUNC3(txhdr, tx_info->local_port);
	FUNC6(txhdr, MLXSW_TXHDR_TYPE_CONTROL);
}