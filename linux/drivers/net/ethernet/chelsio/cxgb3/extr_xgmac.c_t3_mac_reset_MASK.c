#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct cmac {unsigned int offset; int /*<<< orphan*/  stats; struct adapter* adapter; } ;
struct addr_val_pair {int member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct addr_val_pair const*) ; 
 scalar_t__ A_XGM_RESET_CTRL ; 
 scalar_t__ A_XGM_RXFIFO_CFG ; 
#define  A_XGM_RX_CFG 147 
#define  A_XGM_RX_CTRL 146 
#define  A_XGM_RX_EXACT_MATCH_LOW_1 145 
#define  A_XGM_RX_EXACT_MATCH_LOW_2 144 
#define  A_XGM_RX_EXACT_MATCH_LOW_3 143 
#define  A_XGM_RX_EXACT_MATCH_LOW_4 142 
#define  A_XGM_RX_EXACT_MATCH_LOW_5 141 
#define  A_XGM_RX_EXACT_MATCH_LOW_6 140 
#define  A_XGM_RX_EXACT_MATCH_LOW_7 139 
#define  A_XGM_RX_EXACT_MATCH_LOW_8 138 
#define  A_XGM_RX_HASH_HIGH 137 
#define  A_XGM_RX_HASH_LOW 136 
 scalar_t__ A_XGM_RX_MAX_PKT_SIZE ; 
 scalar_t__ A_XGM_SERDES_CTRL ; 
 scalar_t__ A_XGM_SERDES_STATUS1 ; 
#define  A_XGM_STAT_CTRL 135 
 scalar_t__ A_XGM_TXFIFO_CFG ; 
#define  A_XGM_TX_CTRL 134 
 int /*<<< orphan*/  FUNC1 (struct adapter*,char*,int /*<<< orphan*/ ) ; 
#define  F_CLRSTATS 133 
 int /*<<< orphan*/  F_CMULOCK ; 
 int F_DISERRFRAMES ; 
#define  F_DISPAUSEFRAMES 132 
#define  F_EN1536BFRAMES 131 
#define  F_ENHASHMCAST 130 
#define  F_ENJUMBO 129 
 int F_MAC_RESET_ ; 
 int F_PCS_RESET_ ; 
 int F_RGMII_RESET_ ; 
#define  F_RMFCS 128 
 int F_RXENABLE ; 
 int F_RXENFRAMER ; 
 int F_RXSTRFRWRD ; 
 int F_SERDESRESET_ ; 
 int F_TXENABLE ; 
 int F_UNDERUNFIX ; 
 int F_XG2G_RESET_ ; 
 int F_XGMAC_STOP_EN ; 
 int /*<<< orphan*/  MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  M_RXMAXFRAMERSIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct cmac*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,scalar_t__,int,int) ; 
 scalar_t__ FUNC9 (struct adapter*,scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,struct addr_val_pair const*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct cmac*) ; 
 scalar_t__ FUNC13 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct cmac*) ; 

int FUNC15(struct cmac *mac)
{
	static const struct addr_val_pair mac_reset_avp[] = {
		{A_XGM_TX_CTRL, 0},
		{A_XGM_RX_CTRL, 0},
		{A_XGM_RX_CFG, F_DISPAUSEFRAMES | F_EN1536BFRAMES |
		 F_RMFCS | F_ENJUMBO | F_ENHASHMCAST},
		{A_XGM_RX_HASH_LOW, 0},
		{A_XGM_RX_HASH_HIGH, 0},
		{A_XGM_RX_EXACT_MATCH_LOW_1, 0},
		{A_XGM_RX_EXACT_MATCH_LOW_2, 0},
		{A_XGM_RX_EXACT_MATCH_LOW_3, 0},
		{A_XGM_RX_EXACT_MATCH_LOW_4, 0},
		{A_XGM_RX_EXACT_MATCH_LOW_5, 0},
		{A_XGM_RX_EXACT_MATCH_LOW_6, 0},
		{A_XGM_RX_EXACT_MATCH_LOW_7, 0},
		{A_XGM_RX_EXACT_MATCH_LOW_8, 0},
		{A_XGM_STAT_CTRL, F_CLRSTATS}
	};
	u32 val;
	struct adapter *adap = mac->adapter;
	unsigned int oft = mac->offset;

	FUNC10(adap, A_XGM_RESET_CTRL + oft, F_MAC_RESET_);
	FUNC7(adap, A_XGM_RESET_CTRL + oft);	/* flush */

	FUNC11(adap, mac_reset_avp, FUNC0(mac_reset_avp), oft);
	FUNC8(adap, A_XGM_RXFIFO_CFG + oft,
			 F_RXSTRFRWRD | F_DISERRFRAMES,
			 FUNC13(adap) ? 0 : F_RXSTRFRWRD);
	FUNC8(adap, A_XGM_TXFIFO_CFG + oft, 0, F_UNDERUNFIX);

	if (FUNC13(adap)) {
		if (adap->params.rev == 0) {
			FUNC8(adap, A_XGM_SERDES_CTRL + oft, 0,
					 F_RXENABLE | F_TXENABLE);
			if (FUNC9(adap, A_XGM_SERDES_STATUS1 + oft,
					    F_CMULOCK, 1, 5, 2)) {
				FUNC1(adap,
				       "MAC %d XAUI SERDES CMU lock failed\n",
				       FUNC4(mac));
				return -1;
			}
			FUNC8(adap, A_XGM_SERDES_CTRL + oft, 0,
					 F_SERDESRESET_);
		} else
			FUNC14(mac);
	}

	FUNC8(adap, A_XGM_RX_MAX_PKT_SIZE + oft,
			 FUNC2(M_RXMAXFRAMERSIZE),
			 FUNC2(MAX_FRAME_SIZE) | F_RXENFRAMER);
	val = F_MAC_RESET_ | F_XGMAC_STOP_EN;

	if (FUNC3(adap))
		val |= F_PCS_RESET_;
	else if (FUNC13(adap))
		val |= F_PCS_RESET_ | F_XG2G_RESET_;
	else
		val |= F_RGMII_RESET_ | F_XG2G_RESET_;
	FUNC10(adap, A_XGM_RESET_CTRL + oft, val);
	FUNC7(adap, A_XGM_RESET_CTRL + oft);	/* flush */
	if ((val & F_PCS_RESET_) && adap->params.rev) {
		FUNC6(1);
		FUNC12(mac);
	}

	FUNC5(&mac->stats, 0, sizeof(mac->stats));
	return 0;
}