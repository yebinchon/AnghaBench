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
struct ath_hw {int /*<<< orphan*/ * cal_list_curr; int /*<<< orphan*/ * cal_list; int /*<<< orphan*/  iq_caldata; int /*<<< orphan*/ * cal_list_last; struct ath9k_hw_cal_data* caldata; } ;
struct ath9k_hw_cal_data {scalar_t__ CalValid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ath_hw *ah)
{
	struct ath9k_hw_cal_data *caldata = ah->caldata;

	/* Initialize list pointers */
	ah->cal_list = ah->cal_list_last = ah->cal_list_curr = NULL;

	FUNC0(&ah->iq_caldata);
	FUNC1(ah, &ah->iq_caldata);

	/* Initialize current pointer to first element in list */
	ah->cal_list_curr = ah->cal_list;

	if (ah->cal_list_curr)
		FUNC2(ah, ah->cal_list_curr);

	if (caldata)
		caldata->CalValid = 0;
}