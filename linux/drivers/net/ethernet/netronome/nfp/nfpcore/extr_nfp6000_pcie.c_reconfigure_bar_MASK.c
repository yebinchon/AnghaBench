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
struct nfp_bar {int /*<<< orphan*/  base; } ;
struct nfp6000_pcie {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nfp6000_pcie*,struct nfp_bar*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,size_t,int) ; 
 int FUNC1 (struct nfp6000_pcie*,struct nfp_bar*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct nfp6000_pcie *nfp, struct nfp_bar *bar,
		int tgt, int act, int tok, u64 offset, size_t size, int width)
{
	u64 newbase;
	u32 newcfg;
	int err;

	err = FUNC0(nfp, bar, &newcfg, &newbase,
			  tgt, act, tok, offset, size, width);
	if (err)
		return err;

	bar->base = newbase;

	return FUNC1(nfp, bar, newcfg);
}