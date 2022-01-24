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
struct iwl_trans {TYPE_2__* trans_cfg; } ;
struct TYPE_4__ {TYPE_1__* csr; } ;
struct TYPE_3__ {int /*<<< orphan*/  flag_init_done; int /*<<< orphan*/  flag_mac_access_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*) ; 

void FUNC7(struct iwl_trans *trans,
				  bool test, bool reset)
{
	FUNC2(trans);

	/*
	 * in testing mode, the host stays awake and the
	 * hardware won't be reset (not even partially)
	 */
	if (test)
		return;

	FUNC3(trans);

	FUNC5(trans);

	FUNC1(trans, CSR_GP_CNTRL,
		      FUNC0(trans->trans_cfg->csr->flag_mac_access_req));
	FUNC1(trans, CSR_GP_CNTRL,
		      FUNC0(trans->trans_cfg->csr->flag_init_done));

	if (reset) {
		/*
		 * reset TX queues -- some of their registers reset during S3
		 * so if we don't reset everything here the D3 image would try
		 * to execute some invalid memory upon resume
		 */
		FUNC6(trans);
	}

	FUNC4(trans, true);
}