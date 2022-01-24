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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ major; scalar_t__ minor; } ;
struct nfp_nsp {TYPE_1__ ver; int /*<<< orphan*/  res; struct nfp_cpp* cpp; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ NSP_MAGIC ; 
 scalar_t__ NSP_MAJOR ; 
 scalar_t__ NSP_MINOR ; 
 int NSP_STATUS ; 
 int NSP_STATUS_BUSY ; 
 int /*<<< orphan*/  NSP_STATUS_MAGIC ; 
 int /*<<< orphan*/  NSP_STATUS_MAJOR ; 
 int /*<<< orphan*/  NSP_STATUS_MINOR ; 
 int FUNC1 (struct nfp_cpp*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_cpp*,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nfp_nsp *state)
{
	struct nfp_cpp *cpp = state->cpp;
	u64 nsp_status, reg;
	u32 nsp_cpp;
	int err;

	nsp_cpp = FUNC4(state->res);
	nsp_status = FUNC3(state->res) + NSP_STATUS;

	err = FUNC1(cpp, nsp_cpp, nsp_status, &reg);
	if (err < 0)
		return err;

	if (FUNC0(NSP_STATUS_MAGIC, reg) != NSP_MAGIC) {
		FUNC2(cpp, "Cannot detect NFP Service Processor\n");
		return -ENODEV;
	}

	state->ver.major = FUNC0(NSP_STATUS_MAJOR, reg);
	state->ver.minor = FUNC0(NSP_STATUS_MINOR, reg);

	if (state->ver.major != NSP_MAJOR) {
		FUNC2(cpp, "Unsupported ABI %hu.%hu\n",
			state->ver.major, state->ver.minor);
		return -EINVAL;
	}
	if (state->ver.minor < NSP_MINOR) {
		FUNC2(cpp, "ABI too old to support NIC operation (%u.%hu < %u.%u), please update the management FW on the flash\n",
			NSP_MAJOR, state->ver.minor, NSP_MAJOR, NSP_MINOR);
		return -EINVAL;
	}

	if (reg & NSP_STATUS_BUSY) {
		FUNC2(cpp, "Service processor busy!\n");
		return -EBUSY;
	}

	return 0;
}