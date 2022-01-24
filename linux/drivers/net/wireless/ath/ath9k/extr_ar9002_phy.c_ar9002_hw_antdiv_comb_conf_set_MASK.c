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
struct ath_hw_antcomb_conf {int main_lna_conf; int alt_lna_conf; int fast_div_bias; } ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int AR_PHY_9285_ANT_DIV_ALT_LNACONF ; 
 int AR_PHY_9285_ANT_DIV_ALT_LNACONF_S ; 
 int AR_PHY_9285_ANT_DIV_MAIN_LNACONF ; 
 int AR_PHY_9285_ANT_DIV_MAIN_LNACONF_S ; 
 int AR_PHY_9285_FAST_DIV_BIAS ; 
 int AR_PHY_9285_FAST_DIV_BIAS_S ; 
 int /*<<< orphan*/  AR_PHY_MULTICHAIN_GAIN_CTL ; 
 int FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct ath_hw *ah,
				   struct ath_hw_antcomb_conf *antconf)
{
	u32 regval;

	regval = FUNC0(ah, AR_PHY_MULTICHAIN_GAIN_CTL);
	regval &= ~(AR_PHY_9285_ANT_DIV_MAIN_LNACONF |
		    AR_PHY_9285_ANT_DIV_ALT_LNACONF |
		    AR_PHY_9285_FAST_DIV_BIAS);
	regval |= ((antconf->main_lna_conf << AR_PHY_9285_ANT_DIV_MAIN_LNACONF_S)
		   & AR_PHY_9285_ANT_DIV_MAIN_LNACONF);
	regval |= ((antconf->alt_lna_conf << AR_PHY_9285_ANT_DIV_ALT_LNACONF_S)
		   & AR_PHY_9285_ANT_DIV_ALT_LNACONF);
	regval |= ((antconf->fast_div_bias << AR_PHY_9285_FAST_DIV_BIAS_S)
		   & AR_PHY_9285_FAST_DIV_BIAS);

	FUNC1(ah, AR_PHY_MULTICHAIN_GAIN_CTL, regval);
}