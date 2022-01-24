#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct work_struct {int dummy; } ;
struct timespec64 {int /*<<< orphan*/  tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct octeon_soft_command {int /*<<< orphan*/  caller_is_done; int /*<<< orphan*/  sc_status; int /*<<< orphan*/  complete; int /*<<< orphan*/  iq_no; scalar_t__ virtdptr; } ;
struct octeon_device {TYPE_4__* pci_dev; } ;
struct lio_time {int /*<<< orphan*/  nsec; int /*<<< orphan*/  sec; } ;
struct TYPE_11__ {int /*<<< orphan*/  work; } ;
struct TYPE_12__ {TYPE_5__ wk; int /*<<< orphan*/  wq; } ;
struct TYPE_9__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_6__ sync_octeon_time_wq; TYPE_3__ linfo; struct octeon_device* oct_dev; } ;
struct cavium_wk {scalar_t__ ctxptr; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  q_no; } ;
struct TYPE_8__ {TYPE_1__ s; } ;

/* Variables and functions */
 int IQ_SEND_FAILED ; 
 int /*<<< orphan*/  LIO_SYNC_OCTEON_TIME_INTERVAL_MS ; 
 int /*<<< orphan*/  OCTEON_REQUEST_PENDING ; 
 int /*<<< orphan*/  OPCODE_NIC ; 
 int /*<<< orphan*/  OPCODE_NIC_SYNC_OCTEON_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct octeon_soft_command* FUNC5 (struct octeon_device*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,struct octeon_soft_command*) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*,struct octeon_soft_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct octeon_device*,struct octeon_soft_command*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct work_struct *work)
{
	struct cavium_wk *wk = (struct cavium_wk *)work;
	struct lio *lio = (struct lio *)wk->ctxptr;
	struct octeon_device *oct = lio->oct_dev;
	struct octeon_soft_command *sc;
	struct timespec64 ts;
	struct lio_time *lt;
	int ret;

	sc = FUNC5(oct, sizeof(struct lio_time), 16, 0);
	if (!sc) {
		FUNC1(&oct->pci_dev->dev,
			"Failed to sync time to octeon: soft command allocation failed\n");
		return;
	}

	lt = (struct lio_time *)sc->virtdptr;

	/* Get time of the day */
	FUNC3(&ts);
	lt->sec = ts.tv_sec;
	lt->nsec = ts.tv_nsec;
	FUNC9((u64 *)lt, (sizeof(struct lio_time)) / 8);

	sc->iq_no = lio->linfo.txpciq[0].s.q_no;
	FUNC7(oct, sc, OPCODE_NIC,
				    OPCODE_NIC_SYNC_OCTEON_TIME, 0, 0, 0);

	FUNC2(&sc->complete);
	sc->sc_status = OCTEON_REQUEST_PENDING;

	ret = FUNC8(oct, sc);
	if (ret == IQ_SEND_FAILED) {
		FUNC1(&oct->pci_dev->dev,
			"Failed to sync time to octeon: failed to send soft command\n");
		FUNC6(oct, sc);
	} else {
		FUNC0(sc->caller_is_done, true);
	}

	FUNC10(lio->sync_octeon_time_wq.wq,
			   &lio->sync_octeon_time_wq.wk.work,
			   FUNC4(LIO_SYNC_OCTEON_TIME_INTERVAL_MS));
}