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
struct delta_dev {int /*<<< orphan*/  work_queue; } ;
struct delta_ctx {int /*<<< orphan*/  run_work; struct delta_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void *priv)
{
	struct delta_ctx *ctx = priv;
	struct delta_dev *delta = ctx->dev;

	FUNC0(delta->work_queue, &ctx->run_work);
}