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
struct mmci_host {int /*<<< orphan*/  mmc; } ;
struct mmc_data {int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmc_data*) ; 

__attribute__((used)) static int FUNC4(struct mmci_host *host,
				 struct mmc_data *data)
{
	int n_elem;

	n_elem = FUNC1(FUNC2(host->mmc),
			    data->sg,
			    data->sg_len,
			    FUNC3(data));

	if (!n_elem) {
		FUNC0(FUNC2(host->mmc), "dma_map_sg failed\n");
		return -EINVAL;
	}

	return 0;
}