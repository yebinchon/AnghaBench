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
struct fastrpc_session_ctx {int used; scalar_t__ valid; } ;
struct fastrpc_channel_ctx {int sesscount; int /*<<< orphan*/  lock; struct fastrpc_session_ctx* session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct fastrpc_session_ctx *FUNC2(
					struct fastrpc_channel_ctx *cctx)
{
	struct fastrpc_session_ctx *session = NULL;
	unsigned long flags;
	int i;

	FUNC0(&cctx->lock, flags);
	for (i = 0; i < cctx->sesscount; i++) {
		if (!cctx->session[i].used && cctx->session[i].valid) {
			cctx->session[i].used = true;
			session = &cctx->session[i];
			break;
		}
	}
	FUNC1(&cctx->lock, flags);

	return session;
}