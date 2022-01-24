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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nfp_nsp_command_arg {int buf; int option; int code; int dma; int /*<<< orphan*/  (* error_cb ) (struct nfp_nsp*,int) ;int /*<<< orphan*/  error_quiet; scalar_t__ timeout_sec; } ;
struct nfp_nsp {int /*<<< orphan*/  res; struct nfp_cpp* cpp; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NFP_NSP_TIMEOUT_DEFAULT ; 
 int NSP_BUFFER ; 
 int NSP_COMMAND ; 
 int /*<<< orphan*/  NSP_COMMAND_CODE ; 
 int /*<<< orphan*/  NSP_COMMAND_DMA_BUF ; 
 int /*<<< orphan*/  NSP_COMMAND_OPTION ; 
 int /*<<< orphan*/  NSP_COMMAND_START ; 
 int NSP_STATUS ; 
 int /*<<< orphan*/  NSP_STATUS_BUSY ; 
 int /*<<< orphan*/  NSP_STATUS_RESULT ; 
 int FUNC2 (struct nfp_cpp*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC3 (struct nfp_cpp*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_cpp*,char*,int,int) ; 
 int FUNC5 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_nsp*,int) ; 
 int FUNC7 (struct nfp_cpp*,int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nfp_cpp*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nfp_nsp*,int) ; 

__attribute__((used)) static int
FUNC12(struct nfp_nsp *state, const struct nfp_nsp_command_arg *arg)
{
	u64 reg, ret_val, nsp_base, nsp_buffer, nsp_status, nsp_command;
	struct nfp_cpp *cpp = state->cpp;
	u32 nsp_cpp;
	int err;

	nsp_cpp = FUNC9(state->res);
	nsp_base = FUNC8(state->res);
	nsp_status = nsp_base + NSP_STATUS;
	nsp_command = nsp_base + NSP_COMMAND;
	nsp_buffer = nsp_base + NSP_BUFFER;

	err = FUNC5(state);
	if (err)
		return err;

	err = FUNC3(cpp, nsp_cpp, nsp_buffer, arg->buf);
	if (err < 0)
		return err;

	err = FUNC3(cpp, nsp_cpp, nsp_command,
			     FUNC1(NSP_COMMAND_OPTION, arg->option) |
			     FUNC1(NSP_COMMAND_CODE, arg->code) |
			     FUNC1(NSP_COMMAND_DMA_BUF, arg->dma) |
			     FUNC1(NSP_COMMAND_START, 1));
	if (err < 0)
		return err;

	/* Wait for NSP_COMMAND_START to go to 0 */
	err = FUNC7(cpp, &reg, nsp_cpp, nsp_command,
			       NSP_COMMAND_START, 0, NFP_NSP_TIMEOUT_DEFAULT);
	if (err) {
		FUNC4(cpp, "Error %d waiting for code 0x%04x to start\n",
			err, arg->code);
		return err;
	}

	/* Wait for NSP_STATUS_BUSY to go to 0 */
	err = FUNC7(cpp, &reg, nsp_cpp, nsp_status, NSP_STATUS_BUSY,
			       0, arg->timeout_sec ?: NFP_NSP_TIMEOUT_DEFAULT);
	if (err) {
		FUNC4(cpp, "Error %d waiting for code 0x%04x to complete\n",
			err, arg->code);
		return err;
	}

	err = FUNC2(cpp, nsp_cpp, nsp_command, &ret_val);
	if (err < 0)
		return err;
	ret_val = FUNC0(NSP_COMMAND_OPTION, ret_val);

	err = FUNC0(NSP_STATUS_RESULT, reg);
	if (err) {
		if (!arg->error_quiet)
			FUNC10(cpp, "Result (error) code set: %d (%d) command: %d\n",
				 -err, (int)ret_val, arg->code);

		if (arg->error_cb)
			arg->error_cb(state, ret_val);
		else
			FUNC6(state, ret_val);
		return -err;
	}

	return ret_val;
}