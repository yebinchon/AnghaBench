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
struct sdio_func {int /*<<< orphan*/  dev; int /*<<< orphan*/  cur_blksize; int /*<<< orphan*/  max_blksize; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  num; } ;
struct sdio_device_id {int dummy; } ;
struct ath6kl_sdio {int is_disabled; struct ath6kl_sdio* dma_buffer; struct ath6kl* ar; struct sdio_func* func; int /*<<< orphan*/ * bus_req; int /*<<< orphan*/  irq_wq; int /*<<< orphan*/  wr_async_work; int /*<<< orphan*/  wr_asyncq; int /*<<< orphan*/  bus_req_freeq; int /*<<< orphan*/  scat_req; int /*<<< orphan*/  dma_buffer_mutex; int /*<<< orphan*/  wr_async_lock; int /*<<< orphan*/  scat_lock; int /*<<< orphan*/  lock; struct sdio_device_id const* id; } ;
struct TYPE_2__ {int max_data_size; } ;
struct ath6kl {TYPE_1__ bmi; int /*<<< orphan*/ * hif_ops; struct ath6kl_sdio* hif_priv; int /*<<< orphan*/  hif_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BOOT ; 
 int /*<<< orphan*/  ATH6KL_HIF_TYPE_SDIO ; 
 int /*<<< orphan*/  ATH6KL_HTC_TYPE_MBOX ; 
 int BUS_REQUEST_MAX_NUM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HIF_DMA_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ath6kl* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ath6kl*) ; 
 int FUNC4 (struct ath6kl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (struct ath6kl*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath6kl_sdio*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ath6kl_sdio_ops ; 
 int /*<<< orphan*/  FUNC9 (struct ath6kl*) ; 
 int /*<<< orphan*/  ath6kl_sdio_write_async_work ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ath6kl_sdio*) ; 
 void* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sdio_func*,struct ath6kl_sdio*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct sdio_func *func,
			     const struct sdio_device_id *id)
{
	int ret;
	struct ath6kl_sdio *ar_sdio;
	struct ath6kl *ar;
	int count;

	FUNC5(ATH6KL_DBG_BOOT,
		   "sdio new func %d vendor 0x%x device 0x%x block 0x%x/0x%x\n",
		   func->num, func->vendor, func->device,
		   func->max_blksize, func->cur_blksize);

	ar_sdio = FUNC12(sizeof(struct ath6kl_sdio), GFP_KERNEL);
	if (!ar_sdio)
		return -ENOMEM;

	ar_sdio->dma_buffer = FUNC12(HIF_DMA_BUFFER_SIZE, GFP_KERNEL);
	if (!ar_sdio->dma_buffer) {
		ret = -ENOMEM;
		goto err_hif;
	}

	ar_sdio->func = func;
	FUNC14(func, ar_sdio);

	ar_sdio->id = id;
	ar_sdio->is_disabled = true;

	FUNC15(&ar_sdio->lock);
	FUNC15(&ar_sdio->scat_lock);
	FUNC15(&ar_sdio->wr_async_lock);
	FUNC13(&ar_sdio->dma_buffer_mutex);

	FUNC0(&ar_sdio->scat_req);
	FUNC0(&ar_sdio->bus_req_freeq);
	FUNC0(&ar_sdio->wr_asyncq);

	FUNC1(&ar_sdio->wr_async_work, ath6kl_sdio_write_async_work);

	FUNC10(&ar_sdio->irq_wq);

	for (count = 0; count < BUS_REQUEST_MAX_NUM; count++)
		FUNC8(ar_sdio, &ar_sdio->bus_req[count]);

	ar = FUNC2(&ar_sdio->func->dev);
	if (!ar) {
		FUNC6("Failed to alloc ath6kl core\n");
		ret = -ENOMEM;
		goto err_dma;
	}

	ar_sdio->ar = ar;
	ar->hif_type = ATH6KL_HIF_TYPE_SDIO;
	ar->hif_priv = ar_sdio;
	ar->hif_ops = &ath6kl_sdio_ops;
	ar->bmi.max_data_size = 256;

	FUNC9(ar);

	ret = FUNC7(ar);
	if (ret) {
		FUNC6("Failed to config sdio: %d\n", ret);
		goto err_core_alloc;
	}

	ret = FUNC4(ar, ATH6KL_HTC_TYPE_MBOX);
	if (ret) {
		FUNC6("Failed to init ath6kl core\n");
		goto err_core_alloc;
	}

	return ret;

err_core_alloc:
	FUNC3(ar_sdio->ar);
err_dma:
	FUNC11(ar_sdio->dma_buffer);
err_hif:
	FUNC11(ar_sdio);

	return ret;
}