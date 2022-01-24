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
struct ath_hw {int dummy; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_PHY_ACTIVE ; 
 int /*<<< orphan*/  AR_PHY_ACTIVE_EN ; 
 int /*<<< orphan*/  AR_PHY_RX_DELAY ; 
 int AR_PHY_RX_DELAY_DELAY ; 
 int FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,struct ath9k_channel*,int) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah,
			      struct ath9k_channel *chan)
{
	u32 synthDelay;

	synthDelay = FUNC0(ah, AR_PHY_RX_DELAY) & AR_PHY_RX_DELAY_DELAY;

	FUNC1(ah, AR_PHY_ACTIVE, AR_PHY_ACTIVE_EN);

	FUNC2(ah, chan, synthDelay);
}