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
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR5K_TIME_OUT ; 
 int /*<<< orphan*/  AR5K_TIME_OUT_ACK ; 
 int EINVAL ; 
 unsigned int FUNC2 (struct ath5k_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,unsigned int) ; 

__attribute__((used)) static int
FUNC4(struct ath5k_hw *ah, unsigned int timeout)
{
	if (FUNC2(ah, FUNC0(0xffffffff, AR5K_TIME_OUT_ACK))
			<= timeout)
		return -EINVAL;

	FUNC1(ah, AR5K_TIME_OUT, AR5K_TIME_OUT_ACK,
		FUNC3(ah, timeout));

	return 0;
}