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
struct bnx2x_queue_state_params {int cmd; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  BNX2X_Q_CMD_ACTIVATE 137 
#define  BNX2X_Q_CMD_CFC_DEL 136 
#define  BNX2X_Q_CMD_DEACTIVATE 135 
#define  BNX2X_Q_CMD_EMPTY 134 
#define  BNX2X_Q_CMD_HALT 133 
#define  BNX2X_Q_CMD_INIT 132 
#define  BNX2X_Q_CMD_SETUP_TX_ONLY 131 
#define  BNX2X_Q_CMD_TERMINATE 130 
#define  BNX2X_Q_CMD_UPDATE 129 
#define  BNX2X_Q_CMD_UPDATE_TPA 128 
 int EINVAL ; 
 int FUNC1 (struct bnx2x*,struct bnx2x_queue_state_params*) ; 
 int FUNC2 (struct bnx2x*,struct bnx2x_queue_state_params*) ; 
 int FUNC3 (struct bnx2x*,struct bnx2x_queue_state_params*) ; 
 int FUNC4 (struct bnx2x*,struct bnx2x_queue_state_params*) ; 
 int FUNC5 (struct bnx2x*,struct bnx2x_queue_state_params*) ; 
 int FUNC6 (struct bnx2x*,struct bnx2x_queue_state_params*) ; 
 int FUNC7 (struct bnx2x*,struct bnx2x_queue_state_params*) ; 
 int FUNC8 (struct bnx2x*,struct bnx2x_queue_state_params*) ; 
 int FUNC9 (struct bnx2x*,struct bnx2x_queue_state_params*) ; 
 int FUNC10 (struct bnx2x*,struct bnx2x_queue_state_params*) ; 

__attribute__((used)) static inline int FUNC11(struct bnx2x *bp,
					struct bnx2x_queue_state_params *params)
{
	switch (params->cmd) {
	case BNX2X_Q_CMD_INIT:
		return FUNC1(bp, params);
	case BNX2X_Q_CMD_SETUP_TX_ONLY:
		return FUNC7(bp, params);
	case BNX2X_Q_CMD_DEACTIVATE:
		return FUNC4(bp, params);
	case BNX2X_Q_CMD_ACTIVATE:
		return FUNC2(bp, params);
	case BNX2X_Q_CMD_UPDATE:
		return FUNC9(bp, params);
	case BNX2X_Q_CMD_UPDATE_TPA:
		return FUNC10(bp, params);
	case BNX2X_Q_CMD_HALT:
		return FUNC6(bp, params);
	case BNX2X_Q_CMD_CFC_DEL:
		return FUNC3(bp, params);
	case BNX2X_Q_CMD_TERMINATE:
		return FUNC8(bp, params);
	case BNX2X_Q_CMD_EMPTY:
		return FUNC5(bp, params);
	default:
		FUNC0("Unknown command: %d\n", params->cmd);
		return -EINVAL;
	}
}