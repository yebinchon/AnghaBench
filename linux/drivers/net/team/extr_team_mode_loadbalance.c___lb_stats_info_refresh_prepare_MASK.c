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
struct lb_stats_info {int /*<<< orphan*/  stats; int /*<<< orphan*/  last_stats; } ;
struct lb_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct lb_stats_info *s_info)
{
	FUNC0(&s_info->last_stats, &s_info->stats, sizeof(struct lb_stats));
	FUNC1(&s_info->stats, 0, sizeof(struct lb_stats));
}