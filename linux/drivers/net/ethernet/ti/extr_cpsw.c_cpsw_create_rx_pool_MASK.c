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
struct page_pool {int dummy; } ;
struct cpsw_common {struct page_pool** page_pool; TYPE_1__* rxv; } ;
struct TYPE_2__ {int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page_pool*) ; 
 int FUNC1 (struct page_pool*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct page_pool* FUNC3 (struct cpsw_common*,int) ; 

__attribute__((used)) static int FUNC4(struct cpsw_common *cpsw, int ch)
{
	struct page_pool *pool;
	int ret = 0, pool_size;

	pool_size = FUNC2(cpsw->rxv[ch].ch);
	pool = FUNC3(cpsw, pool_size);
	if (FUNC0(pool))
		ret = FUNC1(pool);
	else
		cpsw->page_pool[ch] = pool;

	return ret;
}