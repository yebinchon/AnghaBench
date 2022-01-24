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
struct ath_hw {int dummy; } ;
struct ath9k_channel {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int FUNC3 (struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,struct ath9k_channel*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC10 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ath_hw*,int) ; 

__attribute__((used)) static void FUNC17(struct ath_hw *ah,
					     struct ath9k_channel *chan)
{
	bool is2ghz = FUNC3(chan);
	FUNC16(ah, is2ghz);
	FUNC15(ah, is2ghz);
	FUNC4(ah, is2ghz);
	FUNC8(ah);
	FUNC14(ah, is2ghz);
	FUNC7(ah, chan);
	FUNC10(ah, chan->channel);
	if (!FUNC0(ah) && !FUNC1(ah) && !FUNC2(ah))
		FUNC9(ah);
	FUNC6(ah);
	FUNC5(ah, is2ghz);
	FUNC13(ah, is2ghz);
	FUNC12(ah);
	FUNC11(ah);
}