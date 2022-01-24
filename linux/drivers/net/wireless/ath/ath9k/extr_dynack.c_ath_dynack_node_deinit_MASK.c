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
struct ath_node {int /*<<< orphan*/  list; } ;
struct ath_dynack {int /*<<< orphan*/  qlock; } ;
struct ath_hw {struct ath_dynack dynack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct ath_hw *ah, struct ath_node *an)
{
	struct ath_dynack *da = &ah->dynack;

	FUNC1(&da->qlock);
	FUNC0(&an->list);
	FUNC2(&da->qlock);
}