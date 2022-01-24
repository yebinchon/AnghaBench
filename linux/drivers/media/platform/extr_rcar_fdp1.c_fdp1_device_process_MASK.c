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
struct fdp1_job {int dummy; } ;
struct fdp1_dev {int /*<<< orphan*/  device_process_lock; } ;
struct fdp1_ctx {struct fdp1_dev* fdp1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FD1_CTL_CLKCTRL ; 
 int /*<<< orphan*/  FD1_CTL_CLKCTRL_CSTP_N ; 
 int /*<<< orphan*/  FD1_CTL_CMD ; 
 int /*<<< orphan*/  FD1_CTL_CMD_STRCMD ; 
 int /*<<< orphan*/  FD1_CTL_IRQENB ; 
 int /*<<< orphan*/  FD1_CTL_IRQ_MASK ; 
 int /*<<< orphan*/  FD1_CTL_REGEND ; 
 int /*<<< orphan*/  FD1_CTL_REGEND_REGEND ; 
 int /*<<< orphan*/  FD1_CTL_SGCMD ; 
 int /*<<< orphan*/  FD1_CTL_SGCMD_SGEN ; 
 int /*<<< orphan*/  FD1_IPC_LMEM ; 
 int /*<<< orphan*/  FD1_IPC_LMEM_LINEAR ; 
 int /*<<< orphan*/  FUNC0 (struct fdp1_ctx*,struct fdp1_job*) ; 
 int /*<<< orphan*/  FUNC1 (struct fdp1_ctx*,struct fdp1_job*) ; 
 int /*<<< orphan*/  FUNC2 (struct fdp1_ctx*,struct fdp1_job*) ; 
 int /*<<< orphan*/  FUNC3 (struct fdp1_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct fdp1_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct fdp1_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fdp1_job* FUNC6 (struct fdp1_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct fdp1_dev*,struct fdp1_job*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC10(struct fdp1_ctx *ctx)

{
	struct fdp1_dev *fdp1 = ctx->fdp1;
	struct fdp1_job *job;
	unsigned long flags;

	FUNC8(&fdp1->device_process_lock, flags);

	/* Get a job to process */
	job = FUNC6(fdp1);
	if (!job) {
		/*
		 * VINT can call us to see if we can queue another job.
		 * If we have no work to do, we simply return.
		 */
		FUNC9(&fdp1->device_process_lock, flags);
		return 0;
	}

	/* First Frame only? ... */
	FUNC5(fdp1, FD1_CTL_CLKCTRL_CSTP_N, FD1_CTL_CLKCTRL);

	/* Set the mode, and configuration */
	FUNC0(ctx, job);

	/* DLI Static Configuration */
	FUNC3(ctx);

	/* Sensor Configuration */
	FUNC4(ctx);

	/* Setup the source picture */
	FUNC1(ctx, job);

	/* Setup the destination picture */
	FUNC2(ctx, job);

	/* Line Memory Pixel Number Register for linear access */
	FUNC5(fdp1, FD1_IPC_LMEM_LINEAR, FD1_IPC_LMEM);

	/* Enable Interrupts */
	FUNC5(fdp1, FD1_CTL_IRQ_MASK, FD1_CTL_IRQENB);

	/* Finally, the Immediate Registers */

	/* This job is now in the HW queue */
	FUNC7(fdp1, job);

	/* Start the command */
	FUNC5(fdp1, FD1_CTL_CMD_STRCMD, FD1_CTL_CMD);

	/* Registers will update to HW at next VINT */
	FUNC5(fdp1, FD1_CTL_REGEND_REGEND, FD1_CTL_REGEND);

	/* Enable VINT Generator */
	FUNC5(fdp1, FD1_CTL_SGCMD_SGEN, FD1_CTL_SGCMD);

	FUNC9(&fdp1->device_process_lock, flags);

	return 0;
}