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
typedef  int u64 ;
struct rvu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLKADDR_RVUM ; 
 int RVU_PFVF_FUNC_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct rvu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rvu *rvu, int pcifunc)
{
	int pf, func;
	u64 cfg;

	pf = FUNC1(pcifunc);
	func = pcifunc & RVU_PFVF_FUNC_MASK;

	/* Get first HWVF attached to this PF */
	cfg = FUNC2(rvu, BLKADDR_RVUM, FUNC0(pf));

	return ((cfg & 0xFFF) + func - 1);
}