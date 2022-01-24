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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct brcmf_p2p_disc_st_le {void* dwell; void* chspec; int /*<<< orphan*/  state; } ;
struct brcmf_if {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  discover_state ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_if*,char*,struct brcmf_p2p_disc_st_le*,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC3(struct brcmf_if *ifp, u8 state,
					u16 chanspec, u16 listen_ms)
{
	struct brcmf_p2p_disc_st_le discover_state;
	s32 ret = 0;
	FUNC0(TRACE, "enter\n");

	discover_state.state = state;
	discover_state.chspec = FUNC2(chanspec);
	discover_state.dwell = FUNC2(listen_ms);
	ret = FUNC1(ifp, "p2p_state", &discover_state,
					sizeof(discover_state));
	return ret;
}