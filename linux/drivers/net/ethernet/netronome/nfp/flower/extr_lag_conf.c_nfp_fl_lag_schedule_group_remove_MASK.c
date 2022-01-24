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
struct nfp_fl_lag_group {int to_remove; } ;
struct nfp_fl_lag {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_FL_LAG_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct nfp_fl_lag *lag,
				 struct nfp_fl_lag_group *group)
{
	group->to_remove = true;

	FUNC0(&lag->work, NFP_FL_LAG_DELAY);
}