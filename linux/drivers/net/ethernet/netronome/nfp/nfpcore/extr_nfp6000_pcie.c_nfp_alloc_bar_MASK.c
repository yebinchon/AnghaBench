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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nfp6000_pcie {int /*<<< orphan*/  bar_lock; int /*<<< orphan*/ * bar; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nfp6000_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int FUNC2 (struct nfp6000_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nfp6000_pcie*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp6000_pcie*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nfp6000_pcie*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int FUNC6 (struct nfp6000_pcie*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC9(struct nfp6000_pcie *nfp,
	      u32 tgt, u32 act, u32 tok,
	      u64 offset, size_t size, int width, int nonblocking)
{
	unsigned long irqflags;
	int barnum, retval;

	if (size > (1 << 24))
		return -EINVAL;

	FUNC7(&nfp->bar_lock, irqflags);
	barnum = FUNC1(nfp, tgt, act, tok, offset, size, width);
	if (barnum >= 0) {
		/* Found a perfect match. */
		FUNC3(nfp, &nfp->bar[barnum]);
		FUNC8(&nfp->bar_lock, irqflags);
		return barnum;
	}

	barnum = FUNC2(nfp, tgt, act, tok,
					 offset, size, width);
	if (barnum < 0) {
		if (nonblocking)
			goto err_nobar;

		/* Wait until a BAR becomes available.  The
		 * find_unused_bar function will reclaim the bar_lock
		 * if a free BAR is found.
		 */
		FUNC8(&nfp->bar_lock, irqflags);
		retval = FUNC5(nfp, &barnum, tgt, act, tok,
					  offset, size, width);
		if (retval)
			return retval;
		FUNC0(&nfp->bar_lock);
	}

	FUNC3(nfp, &nfp->bar[barnum]);
	retval = FUNC6(nfp, &nfp->bar[barnum],
				 tgt, act, tok, offset, size, width);
	if (retval < 0) {
		FUNC4(nfp, &nfp->bar[barnum]);
		barnum = retval;
	}

err_nobar:
	FUNC8(&nfp->bar_lock, irqflags);
	return barnum;
}