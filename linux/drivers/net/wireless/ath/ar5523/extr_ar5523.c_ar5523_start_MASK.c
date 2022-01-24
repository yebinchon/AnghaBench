#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int /*<<< orphan*/  mutex; int /*<<< orphan*/  rx_refill_work; int /*<<< orphan*/  wq; int /*<<< orphan*/  flags; TYPE_2__* hw; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {int /*<<< orphan*/  perm_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5523_CMD_FLAG_MAGIC ; 
 int /*<<< orphan*/  AR5523_HW_UP ; 
 int /*<<< orphan*/  CFG_ABOLT ; 
 int /*<<< orphan*/  CFG_DIVERSITY_CTL ; 
 int /*<<< orphan*/  CFG_GMODE_PROTECTION ; 
 int /*<<< orphan*/  CFG_GMODE_PROTECT_RATE_INDEX ; 
 int /*<<< orphan*/  CFG_MAC_ADDR ; 
 int /*<<< orphan*/  CFG_MODE_CTS ; 
 int /*<<< orphan*/  CFG_OVERRD_TX_POWER ; 
 int /*<<< orphan*/  CFG_PROTECTION_TYPE ; 
 int /*<<< orphan*/  CFG_RATE_CONTROL_ENABLE ; 
 int /*<<< orphan*/  CFG_SERVICE_TYPE ; 
 int /*<<< orphan*/  CFG_TPC_HALF_DBM2 ; 
 int /*<<< orphan*/  CFG_TPC_HALF_DBM5 ; 
 int /*<<< orphan*/  CFG_TP_SCALE ; 
 int /*<<< orphan*/  CFG_WME_ENABLED ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  TARGET_DEVICE_AWAKE ; 
 int /*<<< orphan*/  UATH_FILTER_OP_INIT ; 
 int /*<<< orphan*/  UATH_FILTER_OP_SET ; 
 int UATH_FILTER_RX_BCAST ; 
 int UATH_FILTER_RX_BEACON ; 
 int UATH_FILTER_RX_MCAST ; 
 int UATH_FILTER_RX_UCAST ; 
 int /*<<< orphan*/  UATH_LED_ACTIVITY ; 
 int /*<<< orphan*/  UATH_LED_ON ; 
 int /*<<< orphan*/  WDCMSG_BIND ; 
 int /*<<< orphan*/  WDCMSG_RESET_KEY_CACHE ; 
 int /*<<< orphan*/  WDCMSG_SET_PWR_MODE ; 
 int /*<<< orphan*/  WDCMSG_TARGET_START ; 
 int FUNC0 (struct ar5523*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ar5523*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ar5523*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar5523*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct ar5523*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ar5523*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct ieee80211_hw *hw)
{
	struct ar5523 *ar = hw->priv;
	int error;
	__be32 val;

	FUNC4(ar, "start called\n");

	FUNC10(&ar->mutex);
	val = FUNC9(0);
	FUNC1(ar, WDCMSG_BIND, &val, sizeof(val), 0);

	/* set MAC address */
	FUNC3(ar, CFG_MAC_ADDR, &ar->hw->wiphy->perm_addr,
			    ETH_ALEN);

	/* XXX honor net80211 state */
	FUNC2(ar, CFG_RATE_CONTROL_ENABLE, 0x00000001);
	FUNC2(ar, CFG_DIVERSITY_CTL, 0x00000001);
	FUNC2(ar, CFG_ABOLT, 0x0000003f);
	FUNC2(ar, CFG_WME_ENABLED, 0x00000000);

	FUNC2(ar, CFG_SERVICE_TYPE, 1);
	FUNC2(ar, CFG_TP_SCALE, 0x00000000);
	FUNC2(ar, CFG_TPC_HALF_DBM5, 0x0000003c);
	FUNC2(ar, CFG_TPC_HALF_DBM2, 0x0000003c);
	FUNC2(ar, CFG_OVERRD_TX_POWER, 0x00000000);
	FUNC2(ar, CFG_GMODE_PROTECTION, 0x00000000);
	FUNC2(ar, CFG_GMODE_PROTECT_RATE_INDEX, 0x00000003);
	FUNC2(ar, CFG_PROTECTION_TYPE, 0x00000000);
	FUNC2(ar, CFG_MODE_CTS, 0x00000002);

	error = FUNC0(ar, WDCMSG_TARGET_START, NULL, 0,
	    &val, sizeof(val), AR5523_CMD_FLAG_MAGIC);
	if (error) {
		FUNC4(ar, "could not start target, error %d\n", error);
		goto err;
	}
	FUNC4(ar, "WDCMSG_TARGET_START returns handle: 0x%x\n",
		   FUNC8(val));

	FUNC7(ar);

	val = FUNC9(TARGET_DEVICE_AWAKE);
	FUNC1(ar, WDCMSG_SET_PWR_MODE, &val, sizeof(val), 0);
	/* XXX? check */
	FUNC1(ar, WDCMSG_RESET_KEY_CACHE, NULL, 0, 0);

	FUNC13(AR5523_HW_UP, &ar->flags);
	FUNC12(ar->wq, &ar->rx_refill_work);

	/* enable Rx */
	FUNC6(ar, 0, UATH_FILTER_OP_INIT);
	FUNC6(ar,
			    UATH_FILTER_RX_UCAST | UATH_FILTER_RX_MCAST |
			    UATH_FILTER_RX_BCAST | UATH_FILTER_RX_BEACON,
			    UATH_FILTER_OP_SET);

	FUNC5(ar, UATH_LED_ACTIVITY, UATH_LED_ON);
	FUNC4(ar, "start OK\n");

err:
	FUNC11(&ar->mutex);
	return error;
}