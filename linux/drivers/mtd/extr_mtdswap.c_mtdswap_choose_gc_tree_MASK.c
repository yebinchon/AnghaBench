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
struct mtdswap_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLEAN ; 
 int /*<<< orphan*/  DIRTY ; 
 int /*<<< orphan*/  FAILING ; 
 int MTDSWAP_CLEAN ; 
 int MTDSWAP_FAILING ; 
 scalar_t__ FUNC0 (struct mtdswap_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mtdswap_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mtdswap_dev*) ; 
 int FUNC3 (struct mtdswap_dev*) ; 

__attribute__((used)) static int FUNC4(struct mtdswap_dev *d,
				unsigned int background)
{
	int idx;

	if (FUNC1(d, FAILING) &&
		(background || (FUNC0(d, CLEAN) && FUNC0(d, DIRTY))))
		return MTDSWAP_FAILING;

	idx = FUNC3(d);
	if (idx >= MTDSWAP_CLEAN)
		return idx;

	return FUNC2(d);
}