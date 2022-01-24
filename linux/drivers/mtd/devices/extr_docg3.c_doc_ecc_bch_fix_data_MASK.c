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
typedef  int /*<<< orphan*/  u8 ;
struct docg3 {TYPE_1__* cascade; } ;
struct TYPE_2__ {int /*<<< orphan*/  bch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DOC_ECC_BCH_COVERED_BYTES ; 
 int DOC_ECC_BCH_SIZE ; 
 int DOC_ECC_BCH_T ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

__attribute__((used)) static int FUNC5(struct docg3 *docg3, void *buf, u8 *hwecc)
{
	u8 ecc[DOC_ECC_BCH_SIZE];
	int errorpos[DOC_ECC_BCH_T], i, numerrs;

	for (i = 0; i < DOC_ECC_BCH_SIZE; i++)
		ecc[i] = FUNC1(hwecc[i]);
	numerrs = FUNC3(docg3->cascade->bch, NULL,
			     DOC_ECC_BCH_COVERED_BYTES,
			     NULL, ecc, NULL, errorpos);
	FUNC0(numerrs == -EINVAL);
	if (numerrs < 0)
		goto out;

	for (i = 0; i < numerrs; i++)
		errorpos[i] = (errorpos[i] & ~7) | (7 - (errorpos[i] & 7));
	for (i = 0; i < numerrs; i++)
		if (errorpos[i] < DOC_ECC_BCH_COVERED_BYTES*8)
			/* error is located in data, correct it */
			FUNC2(errorpos[i], buf);
out:
	FUNC4("doc_ecc_bch_fix_data: flipped %d bits\n", numerrs);
	return numerrs;
}