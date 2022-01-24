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
typedef  int /*<<< orphan*/  u32 ;
struct xdp_umem_fq_reuse {int dummy; } ;
struct xdp_umem {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xdp_umem_fq_reuse* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xdp_umem*,struct xdp_umem_fq_reuse*) ; 

int FUNC4(struct xdp_umem *umem, u32 nentries)
{
	struct xdp_umem_fq_reuse *reuseq;

	reuseq = FUNC2(nentries);
	if (FUNC0(!reuseq))
		return -ENOMEM;
	FUNC1(FUNC3(umem, reuseq));

	return 0;
}