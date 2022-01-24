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
struct tifm_ms {TYPE_1__* req; scalar_t__ use_dma; int /*<<< orphan*/  timer; struct tifm_dev* dev; } ;
struct tifm_dev {int /*<<< orphan*/  dev; scalar_t__ addr; } ;
struct memstick_host {int dummy; } ;
struct TYPE_2__ {int int_reg; scalar_t__ data_dir; int /*<<< orphan*/  sg; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ READ ; 
 scalar_t__ SOCK_CONTROL ; 
 scalar_t__ SOCK_DMA_CONTROL ; 
 scalar_t__ SOCK_DMA_FIFO_INT_ENABLE_CLEAR ; 
 scalar_t__ SOCK_MS_STATUS ; 
 int TIFM_CTRL_LED ; 
 int TIFM_DMA_RESET ; 
 int TIFM_FIFO_INT_SETALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct memstick_host*,TYPE_1__**) ; 
 int FUNC3 (scalar_t__) ; 
 struct memstick_host* FUNC4 (struct tifm_dev*) ; 
 scalar_t__ FUNC5 (struct tifm_ms*) ; 
 int /*<<< orphan*/  FUNC6 (struct tifm_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct tifm_ms *host)
{
	struct tifm_dev *sock = host->dev;
	struct memstick_host *msh = FUNC4(sock);
	int rc;

	FUNC0(&host->timer);

	host->req->int_reg = FUNC3(sock->addr + SOCK_MS_STATUS) & 0xff;
	host->req->int_reg = (host->req->int_reg & 1)
			     | ((host->req->int_reg << 4) & 0xe0);

	FUNC7(TIFM_FIFO_INT_SETALL,
	       sock->addr + SOCK_DMA_FIFO_INT_ENABLE_CLEAR);
	FUNC7(TIFM_DMA_RESET, sock->addr + SOCK_DMA_CONTROL);

	if (host->use_dma) {
		FUNC6(sock, &host->req->sg, 1,
			      host->req->data_dir == READ
			      ? PCI_DMA_FROMDEVICE
			      : PCI_DMA_TODEVICE);
	}

	FUNC7((~TIFM_CTRL_LED) & FUNC3(sock->addr + SOCK_CONTROL),
	       sock->addr + SOCK_CONTROL);

	FUNC1(&sock->dev, "TPC complete\n");
	do {
		rc = FUNC2(msh, &host->req);
	} while (!rc && FUNC5(host));
}