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
typedef  int /*<<< orphan*/  u64 ;
struct octeon_soft_command {int /*<<< orphan*/  caller_is_done; int /*<<< orphan*/  sc_status; int /*<<< orphan*/  complete; int /*<<< orphan*/  iq_no; scalar_t__ virtdptr; scalar_t__ virtrptr; } ;
struct octeon_device {TYPE_4__* pci_dev; } ;
struct TYPE_10__ {int value1; } ;
struct oct_mdio_cmd_resp {int status; TYPE_5__ resp; } ;
struct oct_mdio_cmd {int op; int mdio_addr; int value1; } ;
struct TYPE_8__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  q_no; } ;
struct TYPE_7__ {TYPE_1__ s; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int IQ_SEND_FAILED ; 
 int /*<<< orphan*/  OCTEON_REQUEST_PENDING ; 
 int /*<<< orphan*/  OPCODE_NIC ; 
 int /*<<< orphan*/  OPCODE_NIC_MDIO45 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct octeon_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,struct octeon_soft_command*) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*,struct octeon_soft_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct octeon_device*,struct octeon_soft_command*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct octeon_device*,struct octeon_soft_command*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct lio *lio, int op, int loc, int *value)
{
	struct octeon_device *oct_dev = lio->oct_dev;
	struct octeon_soft_command *sc;
	struct oct_mdio_cmd_resp *mdio_cmd_rsp;
	struct oct_mdio_cmd *mdio_cmd;
	int retval = 0;

	sc = (struct octeon_soft_command *)
		FUNC3(oct_dev,
					  sizeof(struct oct_mdio_cmd),
					  sizeof(struct oct_mdio_cmd_resp), 0);

	if (!sc)
		return -ENOMEM;

	mdio_cmd_rsp = (struct oct_mdio_cmd_resp *)sc->virtrptr;
	mdio_cmd = (struct oct_mdio_cmd *)sc->virtdptr;

	mdio_cmd->op = op;
	mdio_cmd->mdio_addr = loc;
	if (op)
		mdio_cmd->value1 = *value;
	FUNC7((u64 *)mdio_cmd, sizeof(struct oct_mdio_cmd) / 8);

	sc->iq_no = lio->linfo.txpciq[0].s.q_no;

	FUNC5(oct_dev, sc, OPCODE_NIC, OPCODE_NIC_MDIO45,
				    0, 0, 0);

	FUNC2(&sc->complete);
	sc->sc_status = OCTEON_REQUEST_PENDING;

	retval = FUNC6(oct_dev, sc);
	if (retval == IQ_SEND_FAILED) {
		FUNC1(&oct_dev->pci_dev->dev,
			"octnet_mdio45_access instruction failed status: %x\n",
			retval);
		FUNC4(oct_dev, sc);
		return -EBUSY;
	} else {
		/* Sleep on a wait queue till the cond flag indicates that the
		 * response arrived
		 */
		retval = FUNC8(oct_dev, sc, 0);
		if (retval)
			return retval;

		retval = mdio_cmd_rsp->status;
		if (retval) {
			FUNC1(&oct_dev->pci_dev->dev,
				"octnet mdio45 access failed: %x\n", retval);
			FUNC0(sc->caller_is_done, true);
			return -EBUSY;
		}

		FUNC7((u64 *)(&mdio_cmd_rsp->resp),
				    sizeof(struct oct_mdio_cmd) / 8);

		if (!op)
			*value = mdio_cmd_rsp->resp.value1;

		FUNC0(sc->caller_is_done, true);
	}

	return retval;
}