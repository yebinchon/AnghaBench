#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int param1; int /*<<< orphan*/  cmd; } ;
union octnet_cmd {TYPE_1__ s; scalar_t__ u64; } ;
typedef  int /*<<< orphan*/  u64 ;
struct octeon_soft_command {int /*<<< orphan*/  caller_is_done; int /*<<< orphan*/  sc_status; int /*<<< orphan*/  complete; int /*<<< orphan*/  iq_no; scalar_t__ virtdptr; } ;
struct octeon_device {TYPE_5__* props; } ;
struct TYPE_9__ {TYPE_3__* txpciq; } ;
struct lio {size_t ifidx; int /*<<< orphan*/  netdev; TYPE_4__ linfo; scalar_t__ oct_dev; } ;
struct TYPE_10__ {int rx_on; } ;
struct TYPE_7__ {int /*<<< orphan*/  q_no; } ;
struct TYPE_8__ {TYPE_2__ s; } ;

/* Variables and functions */
 int IQ_SEND_FAILED ; 
 int /*<<< orphan*/  OCTEON_REQUEST_PENDING ; 
 int /*<<< orphan*/  OCTNET_CMD_RX_CTL ; 
 int OCTNET_CMD_SIZE ; 
 int /*<<< orphan*/  OPCODE_NIC ; 
 int /*<<< orphan*/  OPCODE_NIC_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct octeon_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,struct octeon_soft_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,struct octeon_soft_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct octeon_device*,struct octeon_soft_command*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rx_err ; 
 int FUNC8 (struct octeon_device*,struct octeon_soft_command*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct lio *lio, int start_stop)
{
	struct octeon_soft_command *sc;
	union octnet_cmd *ncmd;
	struct octeon_device *oct = (struct octeon_device *)lio->oct_dev;
	int retval;

	if (oct->props[lio->ifidx].rx_on == start_stop)
		return;

	sc = (struct octeon_soft_command *)
		FUNC3(oct, OCTNET_CMD_SIZE,
					  16, 0);
	if (!sc) {
		FUNC2(lio, rx_err, lio->netdev,
			   "Failed to allocate octeon_soft_command\n");
		return;
	}

	ncmd = (union octnet_cmd *)sc->virtdptr;

	ncmd->u64 = 0;
	ncmd->s.cmd = OCTNET_CMD_RX_CTL;
	ncmd->s.param1 = start_stop;

	FUNC7((u64 *)ncmd, (OCTNET_CMD_SIZE >> 3));

	sc->iq_no = lio->linfo.txpciq[0].s.q_no;

	FUNC5(oct, sc, OPCODE_NIC,
				    OPCODE_NIC_CMD, 0, 0, 0);

	FUNC1(&sc->complete);
	sc->sc_status = OCTEON_REQUEST_PENDING;

	retval = FUNC6(oct, sc);
	if (retval == IQ_SEND_FAILED) {
		FUNC2(lio, rx_err, lio->netdev, "Failed to send RX Control message\n");
		FUNC4(oct, sc);
		return;
	} else {
		/* Sleep on a wait queue till the cond flag indicates that the
		 * response arrived or timed-out.
		 */
		retval = FUNC8(oct, sc, 0);
		if (retval)
			return;

		oct->props[lio->ifidx].rx_on = start_stop;
		FUNC0(sc->caller_is_done, true);
	}
}