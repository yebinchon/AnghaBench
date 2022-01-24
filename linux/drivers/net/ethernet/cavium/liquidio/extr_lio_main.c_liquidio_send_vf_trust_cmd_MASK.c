#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct octeon_soft_command {int /*<<< orphan*/  caller_is_done; int /*<<< orphan*/  sc_status; int /*<<< orphan*/  complete; int /*<<< orphan*/  iq_no; } ;
struct octeon_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  q_no; } ;
struct TYPE_5__ {TYPE_1__ s; } ;

/* Variables and functions */
 int ENOMEM ; 
 int IQ_SEND_FAILED ; 
 int /*<<< orphan*/  OCTEON_REQUEST_PENDING ; 
 int /*<<< orphan*/  OPCODE_NIC ; 
 int /*<<< orphan*/  OPCODE_NIC_SET_TRUSTED_VF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct octeon_soft_command* FUNC2 (struct octeon_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,struct octeon_soft_command*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,struct octeon_soft_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct octeon_device*,struct octeon_soft_command*) ; 
 int FUNC6 (struct octeon_device*,struct octeon_soft_command*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct lio *lio, int vfidx, bool trusted)
{
	struct octeon_device *oct = lio->oct_dev;
	struct octeon_soft_command *sc;
	int retval;

	sc = FUNC2(oct, 0, 16, 0);
	if (!sc)
		return -ENOMEM;

	sc->iq_no = lio->linfo.txpciq[0].s.q_no;

	/* vfidx is 0 based, but vf_num (param1) is 1 based */
	FUNC4(oct, sc, OPCODE_NIC,
				    OPCODE_NIC_SET_TRUSTED_VF, 0, vfidx + 1,
				    trusted);

	FUNC1(&sc->complete);
	sc->sc_status = OCTEON_REQUEST_PENDING;

	retval = FUNC5(oct, sc);
	if (retval == IQ_SEND_FAILED) {
		FUNC3(oct, sc);
		retval = -1;
	} else {
		/* Wait for response or timeout */
		retval = FUNC6(oct, sc, 0);
		if (retval)
			return (retval);

		FUNC0(sc->caller_is_done, true);
	}

	return retval;
}