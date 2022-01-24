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
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SOC_RESET_CONTROL_ADDRESS ; 
 int SOC_RESET_CONTROL_SI0_RST_MASK ; 
 int FUNC0 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct ath10k *ar)
{
	u32 val;

	val = FUNC0(ar, SOC_RESET_CONTROL_ADDRESS);
	FUNC1(ar, SOC_RESET_CONTROL_ADDRESS,
			       val | SOC_RESET_CONTROL_SI0_RST_MASK);
	val = FUNC0(ar, SOC_RESET_CONTROL_ADDRESS);

	FUNC2(10);

	val = FUNC0(ar, SOC_RESET_CONTROL_ADDRESS);
	FUNC1(ar, SOC_RESET_CONTROL_ADDRESS,
			       val & ~SOC_RESET_CONTROL_SI0_RST_MASK);
	val = FUNC0(ar, SOC_RESET_CONTROL_ADDRESS);

	FUNC2(10);
}