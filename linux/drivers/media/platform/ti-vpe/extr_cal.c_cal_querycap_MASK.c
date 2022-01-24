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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct TYPE_2__ {char* name; } ;
struct cal_ctx {TYPE_1__ v4l2_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAL_MODULE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct cal_ctx* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			struct v4l2_capability *cap)
{
	struct cal_ctx *ctx = FUNC2(file);

	FUNC1(cap->driver, CAL_MODULE_NAME, sizeof(cap->driver));
	FUNC1(cap->card, CAL_MODULE_NAME, sizeof(cap->card));

	FUNC0(cap->bus_info, sizeof(cap->bus_info),
		 "platform:%s", ctx->v4l2_dev.name);
	return 0;
}