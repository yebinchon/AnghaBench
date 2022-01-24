#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmballoon {TYPE_1__* stats; } ;
typedef  enum vmballoon_stat_page { ____Placeholder_vmballoon_stat_page } vmballoon_stat_page ;
typedef  enum vmballoon_page_size_type { ____Placeholder_vmballoon_page_size_type } vmballoon_page_size_type ;
struct TYPE_2__ {int /*<<< orphan*/ ** page_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static inline void FUNC2(struct vmballoon *b,
					    enum vmballoon_stat_page stat,
					    enum vmballoon_page_size_type size,
					    unsigned int val)
{
	if (FUNC1())
		FUNC0(val, &b->stats->page_stat[stat][size]);
}