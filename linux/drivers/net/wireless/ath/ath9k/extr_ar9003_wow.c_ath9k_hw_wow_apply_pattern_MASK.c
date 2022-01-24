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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {int max_patterns; int /*<<< orphan*/  wow_event_mask2; int /*<<< orphan*/  wow_event_mask; } ;
struct ath_hw {TYPE_1__ wow; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_MAC_PCU_WOW4 ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  AR_WOW_LENGTH1 ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  AR_WOW_LENGTH2 ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  AR_WOW_LENGTH3 ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  AR_WOW_LENGTH4 ; 
 int FUNC7 (int) ; 
 int AR_WOW_LENGTH_MAX ; 
 int /*<<< orphan*/  AR_WOW_PATTERN ; 
 int AR_WOW_PAT_FOUND_SHIFT ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int ENOSPC ; 
 int MAX_NUM_PATTERN ; 
 int MAX_NUM_PATTERN_LEGACY ; 
 int MAX_PATTERN_MASK_SIZE ; 
 int MAX_PATTERN_SIZE ; 
 int /*<<< orphan*/  FUNC11 (struct ath_hw*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ath_hw*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int /*<<< orphan*/ *,int) ; 

int FUNC15(struct ath_hw *ah, u8 *user_pattern,
			       u8 *user_mask, int pattern_count,
			       int pattern_len)
{
	int i;
	u32 pattern_val, mask_val;
	u32 set, clr;

	if (pattern_count >= ah->wow.max_patterns)
		return -ENOSPC;

	if (pattern_count < MAX_NUM_PATTERN_LEGACY)
		FUNC12(ah, AR_WOW_PATTERN, FUNC10(pattern_count));
	else
		FUNC12(ah, AR_MAC_PCU_WOW4, FUNC10(pattern_count - 8));

	for (i = 0; i < MAX_PATTERN_SIZE; i += 4) {
		FUNC14(&pattern_val, user_pattern, 4);
		FUNC13(ah, (FUNC9(pattern_count) + i),
			  pattern_val);
		user_pattern += 4;
	}

	for (i = 0; i < MAX_PATTERN_MASK_SIZE; i += 4) {
		FUNC14(&mask_val, user_mask, 4);
		FUNC13(ah, (FUNC8(pattern_count) + i), mask_val);
		user_mask += 4;
	}

	if (pattern_count < MAX_NUM_PATTERN_LEGACY)
		ah->wow.wow_event_mask |=
			FUNC10(pattern_count + AR_WOW_PAT_FOUND_SHIFT);
	else
		ah->wow.wow_event_mask2 |=
			FUNC10((pattern_count - 8) + AR_WOW_PAT_FOUND_SHIFT);

	if (pattern_count < 4) {
		set = (pattern_len & AR_WOW_LENGTH_MAX) <<
		       FUNC0(pattern_count);
		clr = FUNC4(pattern_count);
		FUNC11(ah, AR_WOW_LENGTH1, set, clr);
	} else if (pattern_count < 8) {
		set = (pattern_len & AR_WOW_LENGTH_MAX) <<
		       FUNC1(pattern_count);
		clr = FUNC5(pattern_count);
		FUNC11(ah, AR_WOW_LENGTH2, set, clr);
	} else if (pattern_count < 12) {
		set = (pattern_len & AR_WOW_LENGTH_MAX) <<
		       FUNC2(pattern_count);
		clr = FUNC6(pattern_count);
		FUNC11(ah, AR_WOW_LENGTH3, set, clr);
	} else if (pattern_count < MAX_NUM_PATTERN) {
		set = (pattern_len & AR_WOW_LENGTH_MAX) <<
		       FUNC3(pattern_count);
		clr = FUNC7(pattern_count);
		FUNC11(ah, AR_WOW_LENGTH4, set, clr);
	}

	return 0;
}