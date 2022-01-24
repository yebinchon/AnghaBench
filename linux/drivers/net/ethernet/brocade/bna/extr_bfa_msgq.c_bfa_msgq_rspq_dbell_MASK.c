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
struct TYPE_7__ {int /*<<< orphan*/  rspq_ci; } ;
struct TYPE_6__ {scalar_t__ i2htok; } ;
struct TYPE_9__ {TYPE_1__ mtag; } ;
struct bfi_msgq_h2i_db {TYPE_2__ idx; TYPE_4__ mh; } ;
struct TYPE_10__ {int /*<<< orphan*/ * msg; } ;
struct bfa_msgq_rspq {TYPE_5__ dbell_mb; TYPE_3__* msgq; int /*<<< orphan*/  consumer_index; } ;
struct TYPE_8__ {int /*<<< orphan*/  ioc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFI_MC_MSGQ ; 
 int /*<<< orphan*/  BFI_MSGQ_H2I_DOORBELL_CI ; 
 int /*<<< orphan*/  FUNC0 (struct bfa_msgq_rspq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/  (*) (struct bfa_msgq_rspq*),struct bfa_msgq_rspq*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfi_msgq_h2i_db*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(struct bfa_msgq_rspq *rspq)
{
	struct bfi_msgq_h2i_db *dbell =
		(struct bfi_msgq_h2i_db *)(&rspq->dbell_mb.msg[0]);

	FUNC4(dbell, 0, sizeof(struct bfi_msgq_h2i_db));
	FUNC2(dbell->mh, BFI_MC_MSGQ, BFI_MSGQ_H2I_DOORBELL_CI, 0);
	dbell->mh.mtag.i2htok = 0;
	dbell->idx.rspq_ci = FUNC3(rspq->consumer_index);

	if (!FUNC1(rspq->msgq->ioc, &rspq->dbell_mb,
				bfa_msgq_rspq_dbell_ready, rspq)) {
		FUNC0(rspq);
	}
}