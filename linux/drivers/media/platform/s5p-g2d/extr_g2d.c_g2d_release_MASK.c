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
struct g2d_dev {int /*<<< orphan*/  v4l2_dev; } ;
struct g2d_ctx {int /*<<< orphan*/  fh; int /*<<< orphan*/  ctrl_handler; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 struct g2d_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct g2d_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 struct g2d_dev* FUNC6 (struct file*) ; 

__attribute__((used)) static int FUNC7(struct file *file)
{
	struct g2d_dev *dev = FUNC6(file);
	struct g2d_ctx *ctx = FUNC0(file->private_data);

	FUNC2(&ctx->ctrl_handler);
	FUNC3(&ctx->fh);
	FUNC4(&ctx->fh);
	FUNC1(ctx);
	FUNC5(&dev->v4l2_dev, "instance closed\n");
	return 0;
}