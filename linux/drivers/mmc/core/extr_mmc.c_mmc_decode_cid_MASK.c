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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int mmca_vsn; } ;
struct TYPE_3__ {int /*<<< orphan*/  year; void* month; void* serial; void* prv; void** prod_name; void* oemid; void* manfid; void* fwrev; void* hwrev; } ;
struct mmc_card {TYPE_2__ csd; int /*<<< orphan*/  host; TYPE_1__ cid; int /*<<< orphan*/ * raw_cid; } ;

/* Variables and functions */
 int EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct mmc_card *card)
{
	u32 *resp = card->raw_cid;

	/*
	 * The selection of the format here is based upon published
	 * specs from sandisk and from what people have reported.
	 */
	switch (card->csd.mmca_vsn) {
	case 0: /* MMC v1.0 - v1.2 */
	case 1: /* MMC v1.4 */
		card->cid.manfid	= FUNC0(resp, 104, 24);
		card->cid.prod_name[0]	= FUNC0(resp, 96, 8);
		card->cid.prod_name[1]	= FUNC0(resp, 88, 8);
		card->cid.prod_name[2]	= FUNC0(resp, 80, 8);
		card->cid.prod_name[3]	= FUNC0(resp, 72, 8);
		card->cid.prod_name[4]	= FUNC0(resp, 64, 8);
		card->cid.prod_name[5]	= FUNC0(resp, 56, 8);
		card->cid.prod_name[6]	= FUNC0(resp, 48, 8);
		card->cid.hwrev		= FUNC0(resp, 44, 4);
		card->cid.fwrev		= FUNC0(resp, 40, 4);
		card->cid.serial	= FUNC0(resp, 16, 24);
		card->cid.month		= FUNC0(resp, 12, 4);
		card->cid.year		= FUNC0(resp, 8, 4) + 1997;
		break;

	case 2: /* MMC v2.0 - v2.2 */
	case 3: /* MMC v3.1 - v3.3 */
	case 4: /* MMC v4 */
		card->cid.manfid	= FUNC0(resp, 120, 8);
		card->cid.oemid		= FUNC0(resp, 104, 16);
		card->cid.prod_name[0]	= FUNC0(resp, 96, 8);
		card->cid.prod_name[1]	= FUNC0(resp, 88, 8);
		card->cid.prod_name[2]	= FUNC0(resp, 80, 8);
		card->cid.prod_name[3]	= FUNC0(resp, 72, 8);
		card->cid.prod_name[4]	= FUNC0(resp, 64, 8);
		card->cid.prod_name[5]	= FUNC0(resp, 56, 8);
		card->cid.prv		= FUNC0(resp, 48, 8);
		card->cid.serial	= FUNC0(resp, 16, 32);
		card->cid.month		= FUNC0(resp, 12, 4);
		card->cid.year		= FUNC0(resp, 8, 4) + 1997;
		break;

	default:
		FUNC2("%s: card has unknown MMCA version %d\n",
			FUNC1(card->host), card->csd.mmca_vsn);
		return -EINVAL;
	}

	return 0;
}