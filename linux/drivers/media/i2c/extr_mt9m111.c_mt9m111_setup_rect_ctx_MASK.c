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
struct v4l2_rect {unsigned int width; unsigned int height; } ;
struct mt9m111_context {int /*<<< orphan*/  reducer_ysize; int /*<<< orphan*/  reducer_xsize; int /*<<< orphan*/  reducer_yzoom; int /*<<< orphan*/  reducer_xzoom; } ;
struct mt9m111 {int /*<<< orphan*/  subdev; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,unsigned int) ; 
 struct i2c_client* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mt9m111 *mt9m111,
			struct mt9m111_context *ctx, struct v4l2_rect *rect,
			unsigned int width, unsigned int height)
{
	struct i2c_client *client = FUNC1(&mt9m111->subdev);
	int ret = FUNC0(client, ctx->reducer_xzoom, rect->width);
	if (!ret)
		ret = FUNC0(client, ctx->reducer_yzoom, rect->height);
	if (!ret)
		ret = FUNC0(client, ctx->reducer_xsize, width);
	if (!ret)
		ret = FUNC0(client, ctx->reducer_ysize, height);
	return ret;
}