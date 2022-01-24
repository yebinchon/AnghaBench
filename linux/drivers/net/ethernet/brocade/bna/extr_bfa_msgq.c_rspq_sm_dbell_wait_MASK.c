#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bfa_msgq_rspq {int flags; } ;
typedef  enum rspq_event { ____Placeholder_rspq_event } rspq_event ;

/* Variables and functions */
 int BFA_MSGQ_RSPQ_F_DB_UPDATE ; 
#define  RSPQ_E_DB_READY 131 
#define  RSPQ_E_FAIL 130 
#define  RSPQ_E_RESP 129 
#define  RSPQ_E_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct bfa_msgq_rspq*,void (*) (struct bfa_msgq_rspq*,int)) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void FUNC2 (struct bfa_msgq_rspq*,int) ; 
 void FUNC3 (struct bfa_msgq_rspq*,int) ; 

__attribute__((used)) static void
FUNC4(struct bfa_msgq_rspq *rspq, enum rspq_event event)
{
	switch (event) {
	case RSPQ_E_STOP:
	case RSPQ_E_FAIL:
		FUNC0(rspq, rspq_sm_stopped);
		break;

	case RSPQ_E_RESP:
		rspq->flags |= BFA_MSGQ_RSPQ_F_DB_UPDATE;
		break;

	case RSPQ_E_DB_READY:
		if (rspq->flags & BFA_MSGQ_RSPQ_F_DB_UPDATE) {
			rspq->flags &= ~BFA_MSGQ_RSPQ_F_DB_UPDATE;
			FUNC0(rspq, rspq_sm_dbell_wait);
		} else
			FUNC0(rspq, rspq_sm_ready);
		break;

	default:
		FUNC1(event);
	}
}