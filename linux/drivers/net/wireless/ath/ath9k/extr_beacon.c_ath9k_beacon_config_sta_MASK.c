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
struct ath_hw {int /*<<< orphan*/  imask; } ;
struct ath_beacon_config {int dummy; } ;
struct ath9k_beacon_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_INT_BMISS ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,struct ath_beacon_config*,struct ath9k_beacon_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hw*,struct ath9k_beacon_state*) ; 

__attribute__((used)) static void FUNC5(struct ath_hw *ah,
				    struct ath_beacon_config *conf)
{
	struct ath9k_beacon_state bs;

	if (FUNC0(ah, conf, &bs) == -EPERM)
		return;

	FUNC1(ah);
	FUNC4(ah, &bs);
	ah->imask |= ATH9K_INT_BMISS;

	FUNC3(ah);
	FUNC2(ah);
}