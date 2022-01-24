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
struct ar9170 {int /*<<< orphan*/  tx_anch; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_IDLE ; 
 int /*<<< orphan*/  CARL9170_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct ar9170 *ar)
{
	FUNC1(&ar->tx_anch);

	FUNC0(ar, CARL9170_STOPPED, CARL9170_IDLE);
	return 0;
}