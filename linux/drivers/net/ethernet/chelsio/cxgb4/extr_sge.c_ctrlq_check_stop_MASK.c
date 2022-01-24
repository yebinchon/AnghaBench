#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  stops; } ;
struct sge_ctrl_txq {int full; TYPE_1__ q; } ;
struct fw_wr_hdr {int /*<<< orphan*/  lo; } ;

/* Variables and functions */
 int FW_WR_EQUEQ_F ; 
 int FW_WR_EQUIQ_F ; 
 scalar_t__ TXQ_STOP_THRES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct sge_ctrl_txq *q, struct fw_wr_hdr *wr)
{
	FUNC1(&q->q);
	if (FUNC3(FUNC2(&q->q) < TXQ_STOP_THRES)) {
		wr->lo |= FUNC0(FW_WR_EQUEQ_F | FW_WR_EQUIQ_F);
		q->q.stops++;
		q->full = 1;
	}
}