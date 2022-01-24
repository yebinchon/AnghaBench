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
struct rx_agg {int /*<<< orphan*/  page; int /*<<< orphan*/  urb; int /*<<< orphan*/  info_list; } ;
struct r8152 {int /*<<< orphan*/  rx_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rx_agg*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct r8152 *tp, struct rx_agg *agg)
{
	FUNC2(&agg->info_list);

	FUNC4(agg->urb);
	FUNC3(agg->page);
	FUNC1(agg);

	FUNC0(&tp->rx_count);
}