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
typedef  scalar_t__ u64 ;
struct niu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPP_CFIG ; 
 scalar_t__ IPP_CFIG_CKSUM_EN ; 
 scalar_t__ IPP_CFIG_DFIFO_ECC_EN ; 
 scalar_t__ IPP_CFIG_DROP_BAD_CRC ; 
 scalar_t__ IPP_CFIG_IPP_ENABLE ; 
 int /*<<< orphan*/  IPP_DFIFO_RD_PTR ; 
 int /*<<< orphan*/  IPP_DFIFO_WR_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (struct niu*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct niu *np)
{
	u64 rd, wr, val;
	int limit;

	rd = FUNC2(IPP_DFIFO_RD_PTR);
	wr = FUNC2(IPP_DFIFO_WR_PTR);
	limit = 100;
	while (--limit >= 0 && (rd != wr)) {
		rd = FUNC2(IPP_DFIFO_RD_PTR);
		wr = FUNC2(IPP_DFIFO_WR_PTR);
	}
	if (limit < 0 &&
	    (rd != 0 && wr != 1)) {
		FUNC0(np->dev, "IPP would not quiesce, rd_ptr[%llx] wr_ptr[%llx]\n",
			   (unsigned long long)FUNC2(IPP_DFIFO_RD_PTR),
			   (unsigned long long)FUNC2(IPP_DFIFO_WR_PTR));
	}

	val = FUNC2(IPP_CFIG);
	val &= ~(IPP_CFIG_IPP_ENABLE |
		 IPP_CFIG_DFIFO_ECC_EN |
		 IPP_CFIG_DROP_BAD_CRC |
		 IPP_CFIG_CKSUM_EN);
	FUNC3(IPP_CFIG, val);

	(void) FUNC1(np);
}