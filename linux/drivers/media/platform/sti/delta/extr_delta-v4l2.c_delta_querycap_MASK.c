#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int /*<<< orphan*/  private_data; } ;
struct delta_dev {TYPE_1__* pdev; TYPE_2__* vdev; } ;
struct delta_ctx {struct delta_dev* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELTA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct delta_ctx* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			  struct v4l2_capability *cap)
{
	struct delta_ctx *ctx = FUNC2(file->private_data);
	struct delta_dev *delta = ctx->dev;

	FUNC1(cap->driver, DELTA_NAME, sizeof(cap->driver));
	FUNC1(cap->card, delta->vdev->name, sizeof(cap->card));
	FUNC0(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
		 delta->pdev->name);

	return 0;
}