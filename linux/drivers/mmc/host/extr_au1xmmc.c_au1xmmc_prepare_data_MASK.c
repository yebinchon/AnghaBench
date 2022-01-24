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
typedef  scalar_t__ u32 ;
struct scatterlist {int length; } ;
struct mmc_data {int blocks; int blksz; int flags; int /*<<< orphan*/  sg_len; struct scatterlist* sg; } ;
struct TYPE_6__ {int len; int /*<<< orphan*/  dir; } ;
struct TYPE_5__ {int len; scalar_t__ offset; scalar_t__ index; } ;
struct au1xmmc_host {int flags; TYPE_3__ dma; int /*<<< orphan*/  mmc; TYPE_2__ pio; TYPE_1__* mrq; } ;
struct TYPE_4__ {scalar_t__ stop; } ;

/* Variables and functions */
 scalar_t__ DDMA_FLAGS_IE ; 
 scalar_t__ DDMA_FLAGS_NOIE ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 scalar_t__ FUNC0 (struct au1xmmc_host*) ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (struct au1xmmc_host*) ; 
 int HOST_F_DBDMA ; 
 int HOST_F_DMA ; 
 int HOST_F_RECV ; 
 int HOST_F_STOP ; 
 int HOST_F_XMIT ; 
 int /*<<< orphan*/  FUNC2 (struct au1xmmc_host*,int /*<<< orphan*/ ) ; 
 int MMC_DATA_READ ; 
 int /*<<< orphan*/  SD_CONFIG_NE ; 
 int /*<<< orphan*/  SD_CONFIG_TH ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC11(struct au1xmmc_host *host,
				struct mmc_data *data)
{
	int datalen = data->blocks * data->blksz;

	if (data->flags & MMC_DATA_READ)
		host->flags |= HOST_F_RECV;
	else
		host->flags |= HOST_F_XMIT;

	if (host->mrq->stop)
		host->flags |= HOST_F_STOP;

	host->dma.dir = DMA_BIDIRECTIONAL;

	host->dma.len = FUNC7(FUNC9(host->mmc), data->sg,
				   data->sg_len, host->dma.dir);

	if (host->dma.len == 0)
		return -ETIMEDOUT;

	FUNC3(data->blksz - 1, FUNC1(host));

	if (host->flags & (HOST_F_DMA | HOST_F_DBDMA)) {
		int i;
		u32 channel = FUNC0(host);

		FUNC6(channel);

		for (i = 0; i < host->dma.len; i++) {
			u32 ret = 0, flags = DDMA_FLAGS_NOIE;
			struct scatterlist *sg = &data->sg[i];
			int sg_len = sg->length;

			int len = (datalen > sg_len) ? sg_len : datalen;

			if (i == host->dma.len - 1)
				flags = DDMA_FLAGS_IE;

			if (host->flags & HOST_F_XMIT) {
				ret = FUNC5(channel,
					FUNC10(sg), len, flags);
			} else {
				ret = FUNC4(channel,
					FUNC10(sg), len, flags);
			}

			if (!ret)
				goto dataerr;

			datalen -= len;
		}
	} else {
		host->pio.index = 0;
		host->pio.offset = 0;
		host->pio.len = datalen;

		if (host->flags & HOST_F_XMIT)
			FUNC2(host, SD_CONFIG_TH);
		else
			FUNC2(host, SD_CONFIG_NE);
			/* IRQ_ON(host, SD_CONFIG_RA | SD_CONFIG_RF); */
	}

	return 0;

dataerr:
	FUNC8(FUNC9(host->mmc), data->sg, data->sg_len,
			host->dma.dir);
	return -ETIMEDOUT;
}