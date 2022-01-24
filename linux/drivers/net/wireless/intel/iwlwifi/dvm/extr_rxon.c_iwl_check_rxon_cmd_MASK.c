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
struct iwl_rxon_cmd {int flags; int* node_addr; int* bssid_addr; int ofdm_basic_rates; int cck_basic_rates; scalar_t__ assoc_id; scalar_t__ channel; } ;
struct iwl_rxon_context {struct iwl_rxon_cmd staging; } ;
struct iwl_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int IWL_RATE_1M_MASK ; 
 int IWL_RATE_6M_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 int RXON_FLG_AUTO_DETECT_MSK ; 
 int RXON_FLG_BAND_24G_MSK ; 
 int RXON_FLG_CCK_MSK ; 
 int RXON_FLG_RADAR_DETECT_MSK ; 
 int RXON_FLG_SHORT_SLOT_MSK ; 
 int RXON_FLG_TGG_PROTECT_MSK ; 
 int RXON_FLG_TGJ_NARROW_BAND_MSK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int,int) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct iwl_priv *priv,
			      struct iwl_rxon_context *ctx)
{
	struct iwl_rxon_cmd *rxon = &ctx->staging;
	u32 errors = 0;

	if (rxon->flags & RXON_FLG_BAND_24G_MSK) {
		if (rxon->flags & RXON_FLG_TGJ_NARROW_BAND_MSK) {
			FUNC1(priv, "check 2.4G: wrong narrow\n");
			errors |= FUNC0(0);
		}
		if (rxon->flags & RXON_FLG_RADAR_DETECT_MSK) {
			FUNC1(priv, "check 2.4G: wrong radar\n");
			errors |= FUNC0(1);
		}
	} else {
		if (!(rxon->flags & RXON_FLG_SHORT_SLOT_MSK)) {
			FUNC1(priv, "check 5.2G: not short slot!\n");
			errors |= FUNC0(2);
		}
		if (rxon->flags & RXON_FLG_CCK_MSK) {
			FUNC1(priv, "check 5.2G: CCK!\n");
			errors |= FUNC0(3);
		}
	}
	if ((rxon->node_addr[0] | rxon->bssid_addr[0]) & 0x1) {
		FUNC1(priv, "mac/bssid mcast!\n");
		errors |= FUNC0(4);
	}

	/* make sure basic rates 6Mbps and 1Mbps are supported */
	if ((rxon->ofdm_basic_rates & IWL_RATE_6M_MASK) == 0 &&
	    (rxon->cck_basic_rates & IWL_RATE_1M_MASK) == 0) {
		FUNC1(priv, "neither 1 nor 6 are basic\n");
		errors |= FUNC0(5);
	}

	if (FUNC3(rxon->assoc_id) > 2007) {
		FUNC1(priv, "aid > 2007\n");
		errors |= FUNC0(6);
	}

	if ((rxon->flags & (RXON_FLG_CCK_MSK | RXON_FLG_SHORT_SLOT_MSK))
			== (RXON_FLG_CCK_MSK | RXON_FLG_SHORT_SLOT_MSK)) {
		FUNC1(priv, "CCK and short slot\n");
		errors |= FUNC0(7);
	}

	if ((rxon->flags & (RXON_FLG_CCK_MSK | RXON_FLG_AUTO_DETECT_MSK))
			== (RXON_FLG_CCK_MSK | RXON_FLG_AUTO_DETECT_MSK)) {
		FUNC1(priv, "CCK and auto detect\n");
		errors |= FUNC0(8);
	}

	if ((rxon->flags & (RXON_FLG_AUTO_DETECT_MSK |
			    RXON_FLG_TGG_PROTECT_MSK)) ==
			    RXON_FLG_TGG_PROTECT_MSK) {
		FUNC1(priv, "TGg but no auto-detect\n");
		errors |= FUNC0(9);
	}

	if (rxon->channel == 0) {
		FUNC1(priv, "zero channel is invalid\n");
		errors |= FUNC0(10);
	}

	FUNC2(errors, "Invalid RXON (%#x), channel %d",
	     errors, FUNC3(rxon->channel));

	return errors ? -EINVAL : 0;
}