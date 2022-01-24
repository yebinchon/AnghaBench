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
struct nfp6000_pcie {int /*<<< orphan*/  bar_waiters; } ;

/* Variables and functions */
 int EAGAIN ; 
 int FUNC0 (struct nfp6000_pcie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct nfp6000_pcie *nfp, int *barnum,
		 u32 tgt, u32 act, u32 tok, u64 offset, size_t size, int width)
{
	return FUNC1(nfp->bar_waiters,
		(*barnum = FUNC0(nfp, tgt, act, tok,
						    offset, size, width))
					!= -EAGAIN);
}