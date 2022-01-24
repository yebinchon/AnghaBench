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
struct mxcmci_host {int /*<<< orphan*/ * cmd; int /*<<< orphan*/  lock; struct mmc_request* req; int /*<<< orphan*/  data; } ;
struct mmc_request {scalar_t__ stop; } ;

/* Variables and functions */
 int FUNC0 (struct mxcmci_host*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct mxcmci_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct mxcmci_host*,unsigned int) ; 
 scalar_t__ FUNC3 (struct mxcmci_host*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct mxcmci_host *host, unsigned int stat)
{
	struct mmc_request *req;
	int data_error;
	unsigned long flags;

	FUNC4(&host->lock, flags);

	if (!host->data) {
		FUNC5(&host->lock, flags);
		return;
	}

	if (!host->req) {
		FUNC5(&host->lock, flags);
		return;
	}

	req = host->req;
	if (!req->stop)
		host->req = NULL; /* we will handle finish req below */

	data_error = FUNC0(host, stat);

	FUNC5(&host->lock, flags);

	if (data_error)
		return;

	FUNC2(host, stat);
	host->cmd = NULL;

	if (req->stop) {
		if (FUNC3(host, req->stop, 0)) {
			FUNC1(host, req);
			return;
		}
	} else {
		FUNC1(host, req);
	}
}