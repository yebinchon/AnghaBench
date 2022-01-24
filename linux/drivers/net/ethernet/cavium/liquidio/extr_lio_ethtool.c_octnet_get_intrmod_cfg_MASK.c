#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct octeon_soft_command {int /*<<< orphan*/  caller_is_done; int /*<<< orphan*/  sc_status; int /*<<< orphan*/  complete; int /*<<< orphan*/  iq_no; scalar_t__ virtrptr; } ;
struct octeon_device {TYPE_4__* pci_dev; } ;
struct oct_intrmod_resp {int /*<<< orphan*/  intrmod; scalar_t__ status; } ;
struct oct_intrmod_cfg {int dummy; } ;
struct TYPE_7__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  q_no; } ;
struct TYPE_6__ {TYPE_1__ s; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int IQ_SEND_FAILED ; 
 int /*<<< orphan*/  OCTEON_REQUEST_PENDING ; 
 int /*<<< orphan*/  OPCODE_NIC ; 
 int /*<<< orphan*/  OPCODE_NIC_INTRMOD_PARAMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct oct_intrmod_cfg*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct oct_intrmod_resp*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct octeon_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,struct octeon_soft_command*) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,struct octeon_soft_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct octeon_device*,struct octeon_soft_command*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct octeon_device*,struct octeon_soft_command*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct lio *lio,
				  struct oct_intrmod_cfg *intr_cfg)
{
	struct octeon_soft_command *sc;
	struct oct_intrmod_resp *resp;
	int retval;
	struct octeon_device *oct_dev = lio->oct_dev;

	/* Alloc soft command */
	sc = (struct octeon_soft_command *)
		FUNC5(oct_dev,
					  0,
					  sizeof(struct oct_intrmod_resp), 0);

	if (!sc)
		return -ENOMEM;

	resp = (struct oct_intrmod_resp *)sc->virtrptr;
	FUNC4(resp, 0, sizeof(struct oct_intrmod_resp));

	sc->iq_no = lio->linfo.txpciq[0].s.q_no;

	FUNC7(oct_dev, sc, OPCODE_NIC,
				    OPCODE_NIC_INTRMOD_PARAMS, 0, 0, 0);

	FUNC2(&sc->complete);
	sc->sc_status = OCTEON_REQUEST_PENDING;

	retval = FUNC8(oct_dev, sc);
	if (retval == IQ_SEND_FAILED) {
		FUNC6(oct_dev, sc);
		return -EINVAL;
	}

	/* Sleep on a wait queue till the cond flag indicates that the
	 * response arrived or timed-out.
	 */
	retval = FUNC10(oct_dev, sc, 0);
	if (retval)
		return -ENODEV;

	if (resp->status) {
		FUNC1(&oct_dev->pci_dev->dev,
			"Get interrupt moderation parameters failed\n");
		FUNC0(sc->caller_is_done, true);
		return -ENODEV;
	}

	FUNC9((u64 *)&resp->intrmod,
			    (sizeof(struct oct_intrmod_cfg)) / 8);
	FUNC3(intr_cfg, &resp->intrmod, sizeof(struct oct_intrmod_cfg));
	FUNC0(sc->caller_is_done, true);

	return 0;
}