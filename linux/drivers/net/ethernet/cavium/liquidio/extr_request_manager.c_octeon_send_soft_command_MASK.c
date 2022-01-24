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
typedef  scalar_t__ u32 ;
struct TYPE_7__ {scalar_t__ rptr; int /*<<< orphan*/  irh; scalar_t__ dptr; int /*<<< orphan*/  ih2; } ;
struct TYPE_6__ {scalar_t__ rptr; int /*<<< orphan*/  irh; scalar_t__ dptr; int /*<<< orphan*/  ih3; } ;
struct TYPE_8__ {TYPE_3__ cmd2; TYPE_2__ cmd3; } ;
struct octeon_soft_command {size_t iq_no; TYPE_4__ cmd; scalar_t__ expiry_time; scalar_t__ dmarptr; void** status_word; scalar_t__ dmadptr; } ;
struct octeon_instr_queue {int /*<<< orphan*/  allow_soft_cmds; } ;
struct octeon_instr_irh {scalar_t__ rflag; } ;
struct octeon_instr_ih3 {scalar_t__ dlengsz; } ;
struct octeon_instr_ih2 {scalar_t__ dlengsz; } ;
struct octeon_device {TYPE_1__* pci_dev; struct octeon_instr_queue** instr_queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* COMPLETION_WORD_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct octeon_device*,size_t,int /*<<< orphan*/ ,int) ; 
 int IQ_SEND_FAILED ; 
 int /*<<< orphan*/  LIO_SC_MAX_TMO_MS ; 
 scalar_t__ FUNC1 (struct octeon_device*) ; 
 scalar_t__ FUNC2 (struct octeon_device*) ; 
 int /*<<< orphan*/  REQTYPE_SOFT_COMMAND ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  instr_dropped ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct octeon_device*,size_t,int,TYPE_4__*,struct octeon_soft_command*,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC7(struct octeon_device *oct,
			     struct octeon_soft_command *sc)
{
	struct octeon_instr_queue *iq;
	struct octeon_instr_ih2 *ih2;
	struct octeon_instr_ih3 *ih3;
	struct octeon_instr_irh *irh;
	u32 len;

	iq = oct->instr_queue[sc->iq_no];
	if (!iq->allow_soft_cmds) {
		FUNC4(&oct->pci_dev->dev, "Soft commands are not allowed on Queue %d\n",
			sc->iq_no);
		FUNC0(oct, sc->iq_no, instr_dropped, 1);
		return IQ_SEND_FAILED;
	}

	if (FUNC1(oct) || FUNC2(oct)) {
		ih3 =  (struct octeon_instr_ih3 *)&sc->cmd.cmd3.ih3;
		if (ih3->dlengsz) {
			FUNC3(!sc->dmadptr);
			sc->cmd.cmd3.dptr = sc->dmadptr;
		}
		irh = (struct octeon_instr_irh *)&sc->cmd.cmd3.irh;
		if (irh->rflag) {
			FUNC3(!sc->dmarptr);
			FUNC3(!sc->status_word);
			*sc->status_word = COMPLETION_WORD_INIT;
			sc->cmd.cmd3.rptr = sc->dmarptr;
		}
		len = (u32)ih3->dlengsz;
	} else {
		ih2 = (struct octeon_instr_ih2 *)&sc->cmd.cmd2.ih2;
		if (ih2->dlengsz) {
			FUNC3(!sc->dmadptr);
			sc->cmd.cmd2.dptr = sc->dmadptr;
		}
		irh = (struct octeon_instr_irh *)&sc->cmd.cmd2.irh;
		if (irh->rflag) {
			FUNC3(!sc->dmarptr);
			FUNC3(!sc->status_word);
			*sc->status_word = COMPLETION_WORD_INIT;
			sc->cmd.cmd2.rptr = sc->dmarptr;
		}
		len = (u32)ih2->dlengsz;
	}

	sc->expiry_time = jiffies + FUNC5(LIO_SC_MAX_TMO_MS);

	return (FUNC6(oct, sc->iq_no, 1, &sc->cmd, sc,
				    len, REQTYPE_SOFT_COMMAND));
}