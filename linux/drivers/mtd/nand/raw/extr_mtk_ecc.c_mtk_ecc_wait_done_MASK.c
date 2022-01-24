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
struct mtk_ecc {int /*<<< orphan*/  dev; int /*<<< orphan*/  done; } ;
typedef  enum mtk_ecc_operation { ____Placeholder_mtk_ecc_operation } mtk_ecc_operation ;

/* Variables and functions */
 int ECC_ENCODE ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct mtk_ecc *ecc, enum mtk_ecc_operation op)
{
	int ret;

	ret = FUNC2(&ecc->done, FUNC1(500));
	if (!ret) {
		FUNC0(ecc->dev, "%s timeout - interrupt did not arrive)\n",
			(op == ECC_ENCODE) ? "encoder" : "decoder");
		return -ETIMEDOUT;
	}

	return 0;
}