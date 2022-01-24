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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_7__ {char* buf; int /*<<< orphan*/  mapaddr; } ;
struct TYPE_6__ {int status; } ;
struct TYPE_5__ {char* buf; int /*<<< orphan*/  mapaddr; } ;
struct TYPE_8__ {int nopoll; int wait_done; int /*<<< orphan*/  lock; TYPE_3__ out_mbox; TYPE_2__ comp; int /*<<< orphan*/  wait; TYPE_1__ in_mbox; } ;
struct mlxsw_pci {TYPE_4__ cmd; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  char __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  CIR_CTRL ; 
 int /*<<< orphan*/  CIR_IN_MODIFIER ; 
 int /*<<< orphan*/  CIR_IN_PARAM_HI ; 
 int /*<<< orphan*/  CIR_IN_PARAM_LO ; 
 int /*<<< orphan*/  CIR_OUT_PARAM_HI ; 
 int /*<<< orphan*/  CIR_OUT_PARAM_LO ; 
 int /*<<< orphan*/  CIR_TOKEN ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int MLXSW_CMD_STATUS_OK ; 
 int MLXSW_PCI_CIR_CTRL_EVREQ_BIT ; 
 int MLXSW_PCI_CIR_CTRL_GO_BIT ; 
 int MLXSW_PCI_CIR_CTRL_OPCODE_MOD_SHIFT ; 
 int MLXSW_PCI_CIR_CTRL_STATUS_SHIFT ; 
 int /*<<< orphan*/  MLXSW_PCI_CIR_TIMEOUT_MSECS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char FUNC1 (int) ; 
 unsigned long jiffies ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int FUNC4 (struct mlxsw_pci*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlxsw_pci*,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(void *bus_priv, u16 opcode, u8 opcode_mod,
			      u32 in_mod, bool out_mbox_direct,
			      char *in_mbox, size_t in_mbox_size,
			      char *out_mbox, size_t out_mbox_size,
			      u8 *p_status)
{
	struct mlxsw_pci *mlxsw_pci = bus_priv;
	dma_addr_t in_mapaddr = 0, out_mapaddr = 0;
	bool evreq = mlxsw_pci->cmd.nopoll;
	unsigned long timeout = FUNC6(MLXSW_PCI_CIR_TIMEOUT_MSECS);
	bool *p_wait_done = &mlxsw_pci->cmd.wait_done;
	int err;

	*p_status = MLXSW_CMD_STATUS_OK;

	err = FUNC7(&mlxsw_pci->cmd.lock);
	if (err)
		return err;

	if (in_mbox) {
		FUNC3(mlxsw_pci->cmd.in_mbox.buf, in_mbox, in_mbox_size);
		in_mapaddr = mlxsw_pci->cmd.in_mbox.mapaddr;
	}
	FUNC5(mlxsw_pci, CIR_IN_PARAM_HI, FUNC10(in_mapaddr));
	FUNC5(mlxsw_pci, CIR_IN_PARAM_LO, FUNC2(in_mapaddr));

	if (out_mbox)
		out_mapaddr = mlxsw_pci->cmd.out_mbox.mapaddr;
	FUNC5(mlxsw_pci, CIR_OUT_PARAM_HI, FUNC10(out_mapaddr));
	FUNC5(mlxsw_pci, CIR_OUT_PARAM_LO, FUNC2(out_mapaddr));

	FUNC5(mlxsw_pci, CIR_IN_MODIFIER, in_mod);
	FUNC5(mlxsw_pci, CIR_TOKEN, 0);

	*p_wait_done = false;

	FUNC12(); /* all needs to be written before we write control register */
	FUNC5(mlxsw_pci, CIR_CTRL,
			  MLXSW_PCI_CIR_CTRL_GO_BIT |
			  (evreq ? MLXSW_PCI_CIR_CTRL_EVREQ_BIT : 0) |
			  (opcode_mod << MLXSW_PCI_CIR_CTRL_OPCODE_MOD_SHIFT) |
			  opcode);

	if (!evreq) {
		unsigned long end;

		end = jiffies + timeout;
		do {
			u32 ctrl = FUNC4(mlxsw_pci, CIR_CTRL);

			if (!(ctrl & MLXSW_PCI_CIR_CTRL_GO_BIT)) {
				*p_wait_done = true;
				*p_status = ctrl >> MLXSW_PCI_CIR_CTRL_STATUS_SHIFT;
				break;
			}
			FUNC0();
		} while (FUNC9(jiffies, end));
	} else {
		FUNC11(mlxsw_pci->cmd.wait, *p_wait_done, timeout);
		*p_status = mlxsw_pci->cmd.comp.status;
	}

	err = 0;
	if (*p_wait_done) {
		if (*p_status)
			err = -EIO;
	} else {
		err = -ETIMEDOUT;
	}

	if (!err && out_mbox && out_mbox_direct) {
		/* Some commands don't use output param as address to mailbox
		 * but they store output directly into registers. In that case,
		 * copy registers into mbox buffer.
		 */
		__be32 tmp;

		if (!evreq) {
			tmp = FUNC1(FUNC4(mlxsw_pci,
							   CIR_OUT_PARAM_HI));
			FUNC3(out_mbox, &tmp, sizeof(tmp));
			tmp = FUNC1(FUNC4(mlxsw_pci,
							   CIR_OUT_PARAM_LO));
			FUNC3(out_mbox + sizeof(tmp), &tmp, sizeof(tmp));
		}
	} else if (!err && out_mbox) {
		FUNC3(out_mbox, mlxsw_pci->cmd.out_mbox.buf, out_mbox_size);
	}

	FUNC8(&mlxsw_pci->cmd.lock);

	return err;
}