#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct ucc_geth_private {TYPE_1__* ug_info; struct ucc_fast_private* uccf; } ;
struct ucc_fast_private {int stopped_tx; int /*<<< orphan*/  p_ucce; int /*<<< orphan*/  p_uccm; } ;
struct TYPE_4__ {int /*<<< orphan*/  ucc_num; } ;
struct TYPE_3__ {TYPE_2__ uf_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  QE_CR_PROTOCOL_ETHERNET ; 
 int /*<<< orphan*/  QE_GRACEFUL_STOP_TX ; 
 int UCC_GETH_UCCE_GRA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ucc_geth_private *ugeth)
{
	struct ucc_fast_private *uccf;
	u32 cecr_subblock;
	u32 temp;
	int i = 10;

	uccf = ugeth->uccf;

	/* Mask GRACEFUL STOP TX interrupt bit and clear it */
	FUNC0(uccf->p_uccm, UCC_GETH_UCCE_GRA);
	FUNC3(uccf->p_ucce, UCC_GETH_UCCE_GRA);  /* clear by writing 1 */

	/* Issue host command */
	cecr_subblock =
	    FUNC5(ugeth->ug_info->uf_info.ucc_num);
	FUNC4(QE_GRACEFUL_STOP_TX, cecr_subblock,
		     QE_CR_PROTOCOL_ETHERNET, 0);

	/* Wait for command to complete */
	do {
		FUNC2(10);
		temp = FUNC1(uccf->p_ucce);
	} while (!(temp & UCC_GETH_UCCE_GRA) && --i);

	uccf->stopped_tx = 1;

	return 0;
}