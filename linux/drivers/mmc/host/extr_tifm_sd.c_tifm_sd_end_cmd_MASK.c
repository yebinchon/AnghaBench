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
struct tifm_sd {int /*<<< orphan*/  bounce_buf; scalar_t__ no_dma; struct mmc_request* req; int /*<<< orphan*/  timer; struct tifm_dev* dev; } ;
struct tifm_dev {int /*<<< orphan*/  lock; scalar_t__ addr; int /*<<< orphan*/  dev; } ;
struct mmc_request {TYPE_1__* cmd; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int flags; int sg_len; int bytes_xfered; int blocks; int blksz; int /*<<< orphan*/ * sg; } ;
struct TYPE_2__ {struct mmc_data* data; } ;

/* Variables and functions */
 int MMC_DATA_WRITE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ SOCK_CONTROL ; 
 scalar_t__ SOCK_MMCSD_BLOCK_LEN ; 
 scalar_t__ SOCK_MMCSD_INT_ENABLE ; 
 scalar_t__ SOCK_MMCSD_NUM_BLOCKS ; 
 int TIFM_CTRL_LED ; 
 int TIFM_MMCSD_BUFINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*,struct mmc_request*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct mmc_host* FUNC7 (struct tifm_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct tifm_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(unsigned long data)
{
	struct tifm_sd *host = (struct tifm_sd*)data;
	struct tifm_dev *sock = host->dev;
	struct mmc_host *mmc = FUNC7(sock);
	struct mmc_request *mrq;
	struct mmc_data *r_data = NULL;
	unsigned long flags;

	FUNC5(&sock->lock, flags);

	FUNC0(&host->timer);
	mrq = host->req;
	host->req = NULL;

	if (!mrq) {
		FUNC3(" %s : no request to complete?\n",
		       FUNC1(&sock->dev));
		FUNC6(&sock->lock, flags);
		return;
	}

	r_data = mrq->cmd->data;
	if (r_data) {
		if (host->no_dma) {
			FUNC9((~TIFM_MMCSD_BUFINT)
			       & FUNC4(sock->addr + SOCK_MMCSD_INT_ENABLE),
			       sock->addr + SOCK_MMCSD_INT_ENABLE);
		} else {
			FUNC8(sock, &host->bounce_buf, 1,
				      (r_data->flags & MMC_DATA_WRITE)
				      ? PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);
			FUNC8(sock, r_data->sg, r_data->sg_len,
				      (r_data->flags & MMC_DATA_WRITE)
				      ? PCI_DMA_TODEVICE : PCI_DMA_FROMDEVICE);
		}

		r_data->bytes_xfered = r_data->blocks
			- FUNC4(sock->addr + SOCK_MMCSD_NUM_BLOCKS) - 1;
		r_data->bytes_xfered *= r_data->blksz;
		r_data->bytes_xfered += r_data->blksz
			- FUNC4(sock->addr + SOCK_MMCSD_BLOCK_LEN) + 1;
	}

	FUNC9((~TIFM_CTRL_LED) & FUNC4(sock->addr + SOCK_CONTROL),
	       sock->addr + SOCK_CONTROL);

	FUNC6(&sock->lock, flags);
	FUNC2(mmc, mrq);
}