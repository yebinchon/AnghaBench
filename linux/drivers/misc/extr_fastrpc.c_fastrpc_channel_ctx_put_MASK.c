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
struct fastrpc_channel_ctx {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  fastrpc_channel_ctx_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct fastrpc_channel_ctx *cctx)
{
	FUNC0(&cctx->refcount, fastrpc_channel_ctx_free);
}