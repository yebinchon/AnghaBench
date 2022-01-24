#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct TYPE_6__ {TYPE_2__* p; int /*<<< orphan*/  fddiSMTRemoteDisconnectFlag; } ;
struct s_smc {TYPE_3__ mib; TYPE_1__* y; } ;
struct TYPE_5__ {int /*<<< orphan*/  fddiPORTMy_Type; } ;
struct TYPE_4__ {int /*<<< orphan*/  pc_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct s_smc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int EC_CONNECT ; 
 int EC_DISCONNECT ; 
 size_t EVENT_ECM ; 
 size_t EVENT_PCM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FDDI_PATH_TEST ; 
 int /*<<< orphan*/  FDDI_REMOTE_DISCONNECT ; 
 int /*<<< orphan*/  FDDI_REMOTE_SELF_TEST ; 
 int /*<<< orphan*/  FDDI_RING_STATUS ; 
 int /*<<< orphan*/  FDDI_SMT_EVENT ; 
 int NUMPHYS ; 
 size_t PA ; 
 size_t PB ; 
 int PC_DISABLE ; 
 int PC_ENABLE ; 
 int PC_MAINT ; 
 int PC_START ; 
 int PC_STOP ; 
 int /*<<< orphan*/  PM_PEER ; 
 int /*<<< orphan*/  RS_DISCONNECT ; 
 int /*<<< orphan*/  RS_EVENT ; 
 int /*<<< orphan*/  FUNC2 (struct s_smc*,int /*<<< orphan*/ ) ; 
#define  SMT_PORT_ACTION 141 
#define  SMT_PORT_ACTION_DISABLE 140 
#define  SMT_PORT_ACTION_ENABLE 139 
#define  SMT_PORT_ACTION_MAINT 138 
#define  SMT_PORT_ACTION_START 137 
#define  SMT_PORT_ACTION_STOP 136 
#define  SMT_STATION_ACTION 135 
#define  SMT_STATION_ACTION_CONNECT 134 
#define  SMT_STATION_ACTION_DISABLE_A 133 
#define  SMT_STATION_ACTION_DISABLE_B 132 
#define  SMT_STATION_ACTION_DISABLE_M 131 
#define  SMT_STATION_ACTION_DISCONNECT 130 
#define  SMT_STATION_ACTION_PATHTEST 129 
#define  SMT_STATION_ACTION_SELFTEST 128 
 int /*<<< orphan*/  TM ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct s_smc*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct s_smc*) ; 

int FUNC5(struct s_smc *smc, int class, int code, int index)
{
	int	event ;
	int	port ;
	FUNC1("SMT: action %d code %d", class, code);
	switch(class) {
	case SMT_STATION_ACTION :
		switch(code) {
		case SMT_STATION_ACTION_CONNECT :
			smc->mib.fddiSMTRemoteDisconnectFlag = FALSE ;
			FUNC3(smc,EVENT_ECM,EC_CONNECT) ;
			break ;
		case SMT_STATION_ACTION_DISCONNECT :
			FUNC3(smc,EVENT_ECM,EC_DISCONNECT) ;
			smc->mib.fddiSMTRemoteDisconnectFlag = TRUE ;
			FUNC2(smc,RS_DISCONNECT) ;
			FUNC0(smc, (u_long) FDDI_RING_STATUS, (u_long)
				FDDI_SMT_EVENT, (u_long) FDDI_REMOTE_DISCONNECT,
				FUNC4(smc));
			break ;
		case SMT_STATION_ACTION_PATHTEST :
			FUNC0(smc, (u_long) FDDI_RING_STATUS, (u_long)
				FDDI_SMT_EVENT, (u_long) FDDI_PATH_TEST,
				FUNC4(smc));
			break ;
		case SMT_STATION_ACTION_SELFTEST :
			FUNC0(smc, (u_long) FDDI_RING_STATUS, (u_long)
				FDDI_SMT_EVENT, (u_long) FDDI_REMOTE_SELF_TEST,
				FUNC4(smc));
			break ;
		case SMT_STATION_ACTION_DISABLE_A :
			if (smc->y[PA].pc_mode == PM_PEER) {
				FUNC2(smc,RS_EVENT) ;
				FUNC3(smc,EVENT_PCM+PA,PC_DISABLE) ;
			}
			break ;
		case SMT_STATION_ACTION_DISABLE_B :
			if (smc->y[PB].pc_mode == PM_PEER) {
				FUNC2(smc,RS_EVENT) ;
				FUNC3(smc,EVENT_PCM+PB,PC_DISABLE) ;
			}
			break ;
		case SMT_STATION_ACTION_DISABLE_M :
			for (port = 0 ; port <  NUMPHYS ; port++) {
				if (smc->mib.p[port].fddiPORTMy_Type != TM)
					continue ;
				FUNC2(smc,RS_EVENT) ;
				FUNC3(smc,EVENT_PCM+port,PC_DISABLE) ;
			}
			break ;
		default :
			return 1;
		}
		break ;
	case SMT_PORT_ACTION :
		switch(code) {
		case SMT_PORT_ACTION_ENABLE :
			event = PC_ENABLE ;
			break ;
		case SMT_PORT_ACTION_DISABLE :
			event = PC_DISABLE ;
			break ;
		case SMT_PORT_ACTION_MAINT :
			event = PC_MAINT ;
			break ;
		case SMT_PORT_ACTION_START :
			event = PC_START ;
			break ;
		case SMT_PORT_ACTION_STOP :
			event = PC_STOP ;
			break ;
		default :
			return 1;
		}
		FUNC3(smc,EVENT_PCM+index,event) ;
		break ;
	default :
		return 1;
	}
	return 0;
}