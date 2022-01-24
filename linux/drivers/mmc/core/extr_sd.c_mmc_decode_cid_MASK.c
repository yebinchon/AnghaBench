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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int year; void* month; void* serial; void* fwrev; void* hwrev; void** prod_name; void* oemid; void* manfid; } ;
struct mmc_card {TYPE_1__ cid; int /*<<< orphan*/ * raw_cid; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int,int) ; 

void FUNC1(struct mmc_card *card)
{
	u32 *resp = card->raw_cid;

	/*
	 * SD doesn't currently have a version field so we will
	 * have to assume we can parse this.
	 */
	card->cid.manfid		= FUNC0(resp, 120, 8);
	card->cid.oemid			= FUNC0(resp, 104, 16);
	card->cid.prod_name[0]		= FUNC0(resp, 96, 8);
	card->cid.prod_name[1]		= FUNC0(resp, 88, 8);
	card->cid.prod_name[2]		= FUNC0(resp, 80, 8);
	card->cid.prod_name[3]		= FUNC0(resp, 72, 8);
	card->cid.prod_name[4]		= FUNC0(resp, 64, 8);
	card->cid.hwrev			= FUNC0(resp, 60, 4);
	card->cid.fwrev			= FUNC0(resp, 56, 4);
	card->cid.serial		= FUNC0(resp, 24, 32);
	card->cid.year			= FUNC0(resp, 12, 8);
	card->cid.month			= FUNC0(resp, 8, 4);

	card->cid.year += 2000; /* SD cards year offset */
}