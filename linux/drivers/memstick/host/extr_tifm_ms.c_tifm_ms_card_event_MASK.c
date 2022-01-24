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
struct tifm_ms {int /*<<< orphan*/  cmd_flags; TYPE_1__* req; } ;
struct tifm_dev {int /*<<< orphan*/  lock; scalar_t__ addr; int /*<<< orphan*/  dev; } ;
struct memstick_host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_INT ; 
 int /*<<< orphan*/  CMD_READY ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  ETIME ; 
 scalar_t__ SOCK_MS_STATUS ; 
 scalar_t__ SOCK_MS_SYSTEM ; 
 unsigned int TIFM_MS_STAT_CRC ; 
 unsigned int TIFM_MS_STAT_MSINT ; 
 unsigned int TIFM_MS_STAT_RDY ; 
 unsigned int TIFM_MS_STAT_TOE ; 
 unsigned int TIFM_MS_SYS_INTCLR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned int,int /*<<< orphan*/ ) ; 
 struct tifm_ms* FUNC1 (struct memstick_host*) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct tifm_dev*) ; 
 int FUNC6 (struct tifm_ms*) ; 
 int /*<<< orphan*/  FUNC7 (struct tifm_ms*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct tifm_dev *sock)
{
	struct tifm_ms *host;
	unsigned int host_status = 0;
	int rc = 1;

	FUNC3(&sock->lock);
	host = FUNC1((struct memstick_host *)FUNC5(sock));
	host_status = FUNC2(sock->addr + SOCK_MS_STATUS);
	FUNC0(&sock->dev, "host event: host_status %x, flags %x\n",
		host_status, host->cmd_flags);

	if (host->req) {
		if (host_status & TIFM_MS_STAT_TOE)
			host->req->error = -ETIME;
		else if (host_status & TIFM_MS_STAT_CRC)
			host->req->error = -EILSEQ;

		if (host_status & TIFM_MS_STAT_RDY)
			host->cmd_flags |= CMD_READY;

		if (host_status & TIFM_MS_STAT_MSINT)
			host->cmd_flags |= CARD_INT;

		rc = FUNC6(host);

	}

	FUNC8(TIFM_MS_SYS_INTCLR | FUNC2(sock->addr + SOCK_MS_SYSTEM),
	       sock->addr + SOCK_MS_SYSTEM);

	if (!rc)
		FUNC7(host);

	FUNC4(&sock->lock);
	return;
}