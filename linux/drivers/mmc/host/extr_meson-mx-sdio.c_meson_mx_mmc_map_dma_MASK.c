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
struct scatterlist {int offset; int length; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int /*<<< orphan*/  sg_len; struct scatterlist* sg; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mmc_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_data*) ; 

__attribute__((used)) static int FUNC4(struct mmc_host *mmc, struct mmc_request *mrq)
{
	struct mmc_data *data = mrq->data;
	int dma_len;
	struct scatterlist *sg;

	if (!data)
		return 0;

	sg = data->sg;
	if (sg->offset & 3 || sg->length & 3) {
		FUNC0(FUNC2(mmc),
			"unaligned scatterlist: offset %x length %d\n",
			sg->offset, sg->length);
		return -EINVAL;
	}

	dma_len = FUNC1(FUNC2(mmc), data->sg, data->sg_len,
			     FUNC3(data));
	if (dma_len <= 0) {
		FUNC0(FUNC2(mmc), "dma_map_sg failed\n");
		return -ENOMEM;
	}

	return 0;
}