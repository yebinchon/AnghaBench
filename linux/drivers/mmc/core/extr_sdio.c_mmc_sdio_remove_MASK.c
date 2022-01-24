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
struct mmc_host {TYPE_1__* card; } ;
struct TYPE_2__ {int sdio_funcs; int /*<<< orphan*/ ** sdio_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mmc_host *host)
{
	int i;

	for (i = 0;i < host->card->sdio_funcs;i++) {
		if (host->card->sdio_func[i]) {
			FUNC1(host->card->sdio_func[i]);
			host->card->sdio_func[i] = NULL;
		}
	}

	FUNC0(host->card);
	host->card = NULL;
}