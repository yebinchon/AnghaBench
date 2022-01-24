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
struct nfp6000_pcie {int /*<<< orphan*/  bar_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct nfp6000_pcie*,int,int,int,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC4(struct nfp6000_pcie *nfp,
			 int tgt, int act, int tok,
			 u64 offset, size_t size, int width)
{
	unsigned long flags;
	int n;

	FUNC2(&nfp->bar_lock, flags);

	n = FUNC1(nfp, tgt, act, tok, offset, size, width);
	if (n < 0)
		FUNC3(&nfp->bar_lock, flags);
	else
		FUNC0(&nfp->bar_lock);

	return n;
}