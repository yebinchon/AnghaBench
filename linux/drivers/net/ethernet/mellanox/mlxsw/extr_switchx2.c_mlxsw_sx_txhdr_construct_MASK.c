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
struct mlxsw_tx_info {int is_emad; int /*<<< orphan*/  local_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_TXHDR_CPU_SIG ; 
 int /*<<< orphan*/  MLXSW_TXHDR_CTCLASS3 ; 
 int /*<<< orphan*/  MLXSW_TXHDR_EMAD ; 
 int /*<<< orphan*/  MLXSW_TXHDR_ETCLASS_5 ; 
 int /*<<< orphan*/  MLXSW_TXHDR_ETCLASS_6 ; 
 int /*<<< orphan*/  MLXSW_TXHDR_ETH_CTL ; 
 int /*<<< orphan*/  MLXSW_TXHDR_LEN ; 
 int /*<<< orphan*/  MLXSW_TXHDR_NOT_EMAD ; 
 int /*<<< orphan*/  MLXSW_TXHDR_PROTO_ETH ; 
 int /*<<< orphan*/  MLXSW_TXHDR_RDQ_EMAD ; 
 int /*<<< orphan*/  MLXSW_TXHDR_RDQ_OTHER ; 
 int /*<<< orphan*/  MLXSW_TXHDR_SIG ; 
 int /*<<< orphan*/  MLXSW_TXHDR_STCLASS_NONE ; 
 int /*<<< orphan*/  MLXSW_TXHDR_TYPE_CONTROL ; 
 int /*<<< orphan*/  MLXSW_TXHDR_VERSION_0 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(struct sk_buff *skb,
				     const struct mlxsw_tx_info *tx_info)
{
	char *txhdr = FUNC14(skb, MLXSW_TXHDR_LEN);
	bool is_emad = tx_info->is_emad;

	FUNC0(txhdr, 0, MLXSW_TXHDR_LEN);

	/* We currently set default values for the egress tclass (QoS). */
	FUNC13(txhdr, MLXSW_TXHDR_VERSION_0);
	FUNC3(txhdr, MLXSW_TXHDR_ETH_CTL);
	FUNC7(txhdr, MLXSW_TXHDR_PROTO_ETH);
	FUNC5(txhdr, is_emad ? MLXSW_TXHDR_ETCLASS_6 :
						  MLXSW_TXHDR_ETCLASS_5);
	FUNC11(txhdr, 0);
	FUNC6(txhdr, tx_info->local_port);
	FUNC2(txhdr, MLXSW_TXHDR_CTCLASS3);
	FUNC8(txhdr, is_emad ? MLXSW_TXHDR_RDQ_EMAD :
					      MLXSW_TXHDR_RDQ_OTHER);
	FUNC1(txhdr, MLXSW_TXHDR_CPU_SIG);
	FUNC9(txhdr, MLXSW_TXHDR_SIG);
	FUNC10(txhdr, MLXSW_TXHDR_STCLASS_NONE);
	FUNC4(txhdr, is_emad ? MLXSW_TXHDR_EMAD :
					       MLXSW_TXHDR_NOT_EMAD);
	FUNC12(txhdr, MLXSW_TXHDR_TYPE_CONTROL);
}