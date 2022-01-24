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
struct ath_hw {struct ath9k_channel* curchan; } ;
struct ath9k_channel {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ath9k_channel const*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel const*) ; 
 scalar_t__ FUNC2 (struct ath9k_channel const*) ; 

__attribute__((used)) static u32 FUNC3(struct ath_hw *ah)
{
	const struct ath9k_channel *chan = ah->curchan;

	if (!chan)
		return 300;

	if (FUNC1(chan))
		return 300;
	if (FUNC0(chan))
		return 750;
	if (FUNC2(chan))
		return 1500;
	return 600;
}