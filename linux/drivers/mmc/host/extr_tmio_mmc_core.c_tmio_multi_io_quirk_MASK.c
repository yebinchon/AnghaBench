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
struct tmio_mmc_host {int (* multi_io_quirk ) (struct mmc_card*,unsigned int,int) ;} ;
struct mmc_card {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct tmio_mmc_host* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mmc_card*,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct mmc_card *card,
			       unsigned int direction, int blk_size)
{
	struct tmio_mmc_host *host = FUNC0(card->host);

	if (host->multi_io_quirk)
		return host->multi_io_quirk(card, direction, blk_size);

	return blk_size;
}