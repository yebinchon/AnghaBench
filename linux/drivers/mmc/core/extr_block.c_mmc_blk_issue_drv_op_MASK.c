#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mmc_blk_ioc_data {int dummy; } ;
typedef  struct mmc_blk_ioc_data u8 ;
typedef  int u32 ;
struct request {int dummy; } ;
struct mmc_queue_req {int drv_op; int ioc_count; int drv_op_result; struct mmc_blk_ioc_data** drv_op_data; } ;
struct mmc_queue {struct mmc_blk_data* blkdata; struct mmc_card* card; } ;
struct TYPE_3__ {int boot_ro_lock; int /*<<< orphan*/  part_time; } ;
struct mmc_card {TYPE_1__ ext_csd; } ;
struct mmc_blk_data {TYPE_2__* disk; } ;
struct TYPE_4__ {int /*<<< orphan*/  disk_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  BLK_STS_OK ; 
 int EINVAL ; 
 int /*<<< orphan*/  EXT_CSD_BOOT_WP ; 
 int EXT_CSD_BOOT_WP_B_PWR_WP_EN ; 
 int /*<<< orphan*/  EXT_CSD_CMD_SET_NORMAL ; 
#define  MMC_DRV_OP_BOOT_WP 132 
#define  MMC_DRV_OP_GET_CARD_STATUS 131 
#define  MMC_DRV_OP_GET_EXT_CSD 130 
#define  MMC_DRV_OP_IOCTL 129 
#define  MMC_DRV_OP_IOCTL_RPMB 128 
 int FUNC0 (struct mmc_card*,struct mmc_blk_data*,struct mmc_blk_ioc_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_card*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mmc_card*,struct mmc_blk_ioc_data**) ; 
 int FUNC4 (struct mmc_card*,int*) ; 
 int FUNC5 (struct mmc_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 struct mmc_queue_req* FUNC7 (struct request*) ; 

__attribute__((used)) static void FUNC8(struct mmc_queue *mq, struct request *req)
{
	struct mmc_queue_req *mq_rq;
	struct mmc_card *card = mq->card;
	struct mmc_blk_data *md = mq->blkdata;
	struct mmc_blk_ioc_data **idata;
	bool rpmb_ioctl;
	u8 **ext_csd;
	u32 status;
	int ret;
	int i;

	mq_rq = FUNC7(req);
	rpmb_ioctl = (mq_rq->drv_op == MMC_DRV_OP_IOCTL_RPMB);

	switch (mq_rq->drv_op) {
	case MMC_DRV_OP_IOCTL:
	case MMC_DRV_OP_IOCTL_RPMB:
		idata = mq_rq->drv_op_data;
		for (i = 0, ret = 0; i < mq_rq->ioc_count; i++) {
			ret = FUNC0(card, md, idata[i]);
			if (ret)
				break;
		}
		/* Always switch back to main area after RPMB access */
		if (rpmb_ioctl)
			FUNC2(card, 0);
		break;
	case MMC_DRV_OP_BOOT_WP:
		ret = FUNC5(card, EXT_CSD_CMD_SET_NORMAL, EXT_CSD_BOOT_WP,
				 card->ext_csd.boot_ro_lock |
				 EXT_CSD_BOOT_WP_B_PWR_WP_EN,
				 card->ext_csd.part_time);
		if (ret)
			FUNC6("%s: Locking boot partition ro until next power on failed: %d\n",
			       md->disk->disk_name, ret);
		else
			card->ext_csd.boot_ro_lock |=
				EXT_CSD_BOOT_WP_B_PWR_WP_EN;
		break;
	case MMC_DRV_OP_GET_CARD_STATUS:
		ret = FUNC4(card, &status);
		if (!ret)
			ret = status;
		break;
	case MMC_DRV_OP_GET_EXT_CSD:
		ext_csd = mq_rq->drv_op_data;
		ret = FUNC3(card, ext_csd);
		break;
	default:
		FUNC6("%s: unknown driver specific operation\n",
		       md->disk->disk_name);
		ret = -EINVAL;
		break;
	}
	mq_rq->drv_op_result = ret;
	FUNC1(req, ret ? BLK_STS_IOERR : BLK_STS_OK);
}