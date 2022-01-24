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
struct fastrpc_session_ctx {int used; } ;
struct fastrpc_channel_ctx {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct fastrpc_channel_ctx *cctx,
				 struct fastrpc_session_ctx *session)
{
	unsigned long flags;

	FUNC0(&cctx->lock, flags);
	session->used = false;
	FUNC1(&cctx->lock, flags);
}