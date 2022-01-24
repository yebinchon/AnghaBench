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
struct efx_nic {scalar_t__ mc_bist_for_other_fn; } ;
struct TYPE_2__ {int /*<<< orphan*/ * next; } ;
struct efx_mcdi_iface {scalar_t__ mode; int /*<<< orphan*/  async_lock; int /*<<< orphan*/  async_timer; TYPE_1__ async_list; } ;
struct efx_mcdi_async_param {unsigned int cmd; size_t inlen; size_t outlen; int quiet; unsigned long cookie; int /*<<< orphan*/  list; int /*<<< orphan*/ * complete; } ;
typedef  int /*<<< orphan*/  efx_mcdi_async_completer ;
typedef  int /*<<< orphan*/  efx_dword_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ENETDOWN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ MCDI_MODE_EVENTS ; 
 scalar_t__ MCDI_RPC_TIMEOUT ; 
 struct efx_mcdi_iface* FUNC1 (struct efx_nic*) ; 
 scalar_t__ FUNC2 (struct efx_mcdi_iface*) ; 
 int FUNC3 (struct efx_nic*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_nic*,unsigned int,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (struct efx_mcdi_async_param*) ; 
 struct efx_mcdi_async_param* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_mcdi_async_param*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct efx_nic *efx, unsigned int cmd,
			       const efx_dword_t *inbuf, size_t inlen,
			       size_t outlen,
			       efx_mcdi_async_completer *complete,
			       unsigned long cookie, bool quiet)
{
	struct efx_mcdi_iface *mcdi = FUNC1(efx);
	struct efx_mcdi_async_param *async;
	int rc;

	rc = FUNC3(efx, cmd, inlen);
	if (rc)
		return rc;

	if (efx->mc_bist_for_other_fn)
		return -ENETDOWN;

	async = FUNC6(sizeof(*async) + FUNC0(FUNC8(inlen, outlen), 4),
			GFP_ATOMIC);
	if (!async)
		return -ENOMEM;

	async->cmd = cmd;
	async->inlen = inlen;
	async->outlen = outlen;
	async->quiet = quiet;
	async->complete = complete;
	async->cookie = cookie;
	FUNC9(async + 1, inbuf, inlen);

	FUNC11(&mcdi->async_lock);

	if (mcdi->mode == MCDI_MODE_EVENTS) {
		FUNC7(&async->list, &mcdi->async_list);

		/* If this is at the front of the queue, try to start it
		 * immediately
		 */
		if (mcdi->async_list.next == &async->list &&
		    FUNC2(mcdi)) {
			FUNC4(efx, cmd, inbuf, inlen);
			FUNC10(&mcdi->async_timer,
				  jiffies + MCDI_RPC_TIMEOUT);
		}
	} else {
		FUNC5(async);
		rc = -ENETDOWN;
	}

	FUNC12(&mcdi->async_lock);

	return rc;
}