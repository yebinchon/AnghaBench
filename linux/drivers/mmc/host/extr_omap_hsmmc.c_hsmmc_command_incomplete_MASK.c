#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct omap_hsmmc_host {TYPE_2__* mrq; scalar_t__ data; TYPE_1__* cmd; } ;
struct TYPE_6__ {int error; } ;
struct TYPE_5__ {TYPE_3__* cmd; } ;
struct TYPE_4__ {int error; } ;

/* Variables and functions */
 int /*<<< orphan*/  SRC ; 
 int /*<<< orphan*/  SRD ; 
 int /*<<< orphan*/  FUNC0 (struct omap_hsmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_hsmmc_host*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct omap_hsmmc_host *host,
					int err, int end_cmd)
{
	if (end_cmd) {
		FUNC1(host, SRC);
		if (host->cmd)
			host->cmd->error = err;
	}

	if (host->data) {
		FUNC1(host, SRD);
		FUNC0(host, err);
	} else if (host->mrq && host->mrq->cmd)
		host->mrq->cmd->error = err;
}