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
typedef  int u_long ;
struct s_smc {int dummy; } ;

/* Variables and functions */
 int RS_BEACON ; 
 int RS_DISCONNECT ; 
 int RS_DUPADDR ; 
 int RS_EVENT ; 
 int RS_HARDERROR ; 
 int RS_NORINGOP ; 
 int RS_PATHTEST ; 
 int RS_RES0 ; 
 int RS_RES15 ; 
 int RS_RES7 ; 
 int RS_RES9 ; 
 int RS_RINGOPCHANGE ; 
 int RS_SELFTEST ; 
 int RS_SOFTERROR ; 
 int RS_STUCKBYPASSS ; 
 int RS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(struct s_smc *smc, u_long status)
{
	FUNC0("ring_status_indication( ");
	if (status & RS_RES15)
		FUNC0("RS_RES15 ");
	if (status & RS_HARDERROR)
		FUNC0("RS_HARDERROR ");
	if (status & RS_SOFTERROR)
		FUNC0("RS_SOFTERROR ");
	if (status & RS_BEACON)
		FUNC0("RS_BEACON ");
	if (status & RS_PATHTEST)
		FUNC0("RS_PATHTEST ");
	if (status & RS_SELFTEST)
		FUNC0("RS_SELFTEST ");
	if (status & RS_RES9)
		FUNC0("RS_RES9 ");
	if (status & RS_DISCONNECT)
		FUNC0("RS_DISCONNECT ");
	if (status & RS_RES7)
		FUNC0("RS_RES7 ");
	if (status & RS_DUPADDR)
		FUNC0("RS_DUPADDR ");
	if (status & RS_NORINGOP)
		FUNC0("RS_NORINGOP ");
	if (status & RS_VERSION)
		FUNC0("RS_VERSION ");
	if (status & RS_STUCKBYPASSS)
		FUNC0("RS_STUCKBYPASSS ");
	if (status & RS_EVENT)
		FUNC0("RS_EVENT ");
	if (status & RS_RINGOPCHANGE)
		FUNC0("RS_RINGOPCHANGE ");
	if (status & RS_RES0)
		FUNC0("RS_RES0 ");
	FUNC0("]\n");
}