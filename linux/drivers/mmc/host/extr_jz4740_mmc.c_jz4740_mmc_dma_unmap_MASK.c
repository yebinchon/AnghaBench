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
struct mmc_data {int /*<<< orphan*/  host_cookie; int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct jz4740_mmc_host {int dummy; } ;
struct dma_chan {TYPE_1__* device; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COOKIE_UNMAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dma_chan* FUNC1 (struct jz4740_mmc_host*,struct mmc_data*) ; 
 int FUNC2 (struct mmc_data*) ; 

__attribute__((used)) static void FUNC3(struct jz4740_mmc_host *host,
				 struct mmc_data *data)
{
	struct dma_chan *chan = FUNC1(host, data);
	enum dma_data_direction dir = FUNC2(data);

	FUNC0(chan->device->dev, data->sg, data->sg_len, dir);
	data->host_cookie = COOKIE_UNMAPPED;
}