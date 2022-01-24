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
typedef  int u8 ;
struct ath5k_hw {int ah_coverage_class; } ;

/* Variables and functions */
 int FUNC0 (struct ath5k_hw*) ; 
 int FUNC1 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath5k_hw*,int) ; 

void
FUNC5(struct ath5k_hw *ah, u8 coverage_class)
{
	/* As defined by IEEE 802.11-2007 17.3.8.6 */
	int slot_time = FUNC1(ah) + 3 * coverage_class;
	int ack_timeout = FUNC0(ah) + slot_time;
	int cts_timeout = ack_timeout;

	FUNC4(ah, slot_time);
	FUNC2(ah, ack_timeout);
	FUNC3(ah, cts_timeout);

	ah->ah_coverage_class = coverage_class;
}