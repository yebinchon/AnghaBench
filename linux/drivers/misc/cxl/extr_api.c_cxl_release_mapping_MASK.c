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
struct cxl_context {scalar_t__ mapping; scalar_t__ kernelapi; } ;

/* Variables and functions */
 int /*<<< orphan*/  cxl_fs_cnt ; 
 int /*<<< orphan*/  cxl_vfs_mount ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC1(struct cxl_context *ctx)
{
	if (ctx->kernelapi && ctx->mapping)
		FUNC0(&cxl_vfs_mount, &cxl_fs_cnt);
}