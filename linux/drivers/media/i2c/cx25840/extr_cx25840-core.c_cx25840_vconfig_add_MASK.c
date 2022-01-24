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
typedef  int /*<<< orphan*/  u32 ;
struct cx25840_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX25840_VCONFIG_ACTIVE_MASK ; 
 int /*<<< orphan*/  CX25840_VCONFIG_ANCDATA_MASK ; 
 int /*<<< orphan*/  CX25840_VCONFIG_CLKGATE_MASK ; 
 int /*<<< orphan*/  CX25840_VCONFIG_DCMODE_MASK ; 
 int /*<<< orphan*/  CX25840_VCONFIG_FMT_MASK ; 
 int /*<<< orphan*/  CX25840_VCONFIG_HRESETW_MASK ; 
 int /*<<< orphan*/  CX25840_VCONFIG_IDID0S_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct cx25840_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CX25840_VCONFIG_RES_MASK ; 
 int /*<<< orphan*/  CX25840_VCONFIG_TASKBIT_MASK ; 
 int /*<<< orphan*/  CX25840_VCONFIG_VALID_MASK ; 
 int /*<<< orphan*/  CX25840_VCONFIG_VBIRAW_MASK ; 
 int /*<<< orphan*/  CX25840_VCONFIG_VIPCLAMP_MASK ; 

__attribute__((used)) static void FUNC1(struct cx25840_state *state, u32 cfg_in)
{
	FUNC0(state, cfg_in, CX25840_VCONFIG_FMT_MASK);
	FUNC0(state, cfg_in, CX25840_VCONFIG_RES_MASK);
	FUNC0(state, cfg_in, CX25840_VCONFIG_VBIRAW_MASK);
	FUNC0(state, cfg_in, CX25840_VCONFIG_ANCDATA_MASK);
	FUNC0(state, cfg_in, CX25840_VCONFIG_TASKBIT_MASK);
	FUNC0(state, cfg_in, CX25840_VCONFIG_ACTIVE_MASK);
	FUNC0(state, cfg_in, CX25840_VCONFIG_VALID_MASK);
	FUNC0(state, cfg_in, CX25840_VCONFIG_HRESETW_MASK);
	FUNC0(state, cfg_in, CX25840_VCONFIG_CLKGATE_MASK);
	FUNC0(state, cfg_in, CX25840_VCONFIG_DCMODE_MASK);
	FUNC0(state, cfg_in, CX25840_VCONFIG_IDID0S_MASK);
	FUNC0(state, cfg_in, CX25840_VCONFIG_VIPCLAMP_MASK);
}