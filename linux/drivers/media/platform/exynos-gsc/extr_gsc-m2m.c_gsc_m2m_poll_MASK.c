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
struct poll_table_struct {int dummy; } ;
struct gsc_dev {int /*<<< orphan*/  lock; } ;
struct gsc_ctx {int /*<<< orphan*/  m2m_ctx; struct gsc_dev* gsc_dev; } ;
struct file {int /*<<< orphan*/  private_data; } ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLERR ; 
 struct gsc_ctx* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ ,struct poll_table_struct*) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *file,
					struct poll_table_struct *wait)
{
	struct gsc_ctx *ctx = FUNC0(file->private_data);
	struct gsc_dev *gsc = ctx->gsc_dev;
	__poll_t ret;

	if (FUNC1(&gsc->lock))
		return EPOLLERR;

	ret = FUNC3(file, ctx->m2m_ctx, wait);
	FUNC2(&gsc->lock);

	return ret;
}