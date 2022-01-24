#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int msg_id; } ;
union bfi_cee_i2h_msg_u {TYPE_1__ mh; } ;
struct bfi_mbmsg {int dummy; } ;
struct bfi_cee_get_rsp {int /*<<< orphan*/  cmd_status; } ;
struct bfa_cee {int dummy; } ;

/* Variables and functions */
#define  BFI_CEE_I2H_GET_CFG_RSP 130 
#define  BFI_CEE_I2H_GET_STATS_RSP 129 
#define  BFI_CEE_I2H_RESET_STATS_RSP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_cee*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_cee*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_cee*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *cbarg, struct bfi_mbmsg *m)
{
	union bfi_cee_i2h_msg_u *msg;
	struct bfi_cee_get_rsp *get_rsp;
	struct bfa_cee *cee = (struct bfa_cee *) cbarg;
	msg = (union bfi_cee_i2h_msg_u *) m;
	get_rsp = (struct bfi_cee_get_rsp *) m;
	switch (msg->mh.msg_id) {
	case BFI_CEE_I2H_GET_CFG_RSP:
		FUNC1(cee, get_rsp->cmd_status);
		break;
	case BFI_CEE_I2H_GET_STATS_RSP:
		FUNC2(cee, get_rsp->cmd_status);
		break;
	case BFI_CEE_I2H_RESET_STATS_RSP:
		FUNC3(cee, get_rsp->cmd_status);
		break;
	default:
		FUNC0(1);
	}
}