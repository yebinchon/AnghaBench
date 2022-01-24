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
struct sdio_func_tuple {unsigned char* data; unsigned char code; unsigned char size; struct sdio_func_tuple* next; } ;
struct sdio_func {unsigned char num; struct sdio_func_tuple* tuples; } ;
struct mmc_card {struct sdio_func_tuple* tuples; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EILSEQ ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC1 (unsigned char) ; 
 unsigned int SDIO_FBR_CIS ; 
 int /*<<< orphan*/  cis_tpl_list ; 
 int FUNC2 (struct mmc_card*,struct sdio_func*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,unsigned char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func_tuple*) ; 
 struct sdio_func_tuple* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mmc_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,unsigned char,unsigned char) ; 

__attribute__((used)) static int FUNC8(struct mmc_card *card, struct sdio_func *func)
{
	int ret;
	struct sdio_func_tuple *this, **prev;
	unsigned i, ptr = 0;

	/*
	 * Note that this works for the common CIS (function number 0) as
	 * well as a function's CIS * since SDIO_CCCR_CIS and SDIO_FBR_CIS
	 * have the same offset.
	 */
	for (i = 0; i < 3; i++) {
		unsigned char x, fn;

		if (func)
			fn = func->num;
		else
			fn = 0;

		ret = FUNC6(card, 0, 0,
			FUNC1(fn) + SDIO_FBR_CIS + i, 0, &x);
		if (ret)
			return ret;
		ptr |= x << (i * 8);
	}

	if (func)
		prev = &func->tuples;
	else
		prev = &card->tuples;

	if (*prev)
		return -EINVAL;

	do {
		unsigned char tpl_code, tpl_link;

		ret = FUNC6(card, 0, 0, ptr++, 0, &tpl_code);
		if (ret)
			break;

		/* 0xff means we're done */
		if (tpl_code == 0xff)
			break;

		/* null entries have no link field or data */
		if (tpl_code == 0x00)
			continue;

		ret = FUNC6(card, 0, 0, ptr++, 0, &tpl_link);
		if (ret)
			break;

		/* a size of 0xff also means we're done */
		if (tpl_link == 0xff)
			break;

		this = FUNC4(sizeof(*this) + tpl_link, GFP_KERNEL);
		if (!this)
			return -ENOMEM;

		for (i = 0; i < tpl_link; i++) {
			ret = FUNC6(card, 0, 0,
					       ptr + i, 0, &this->data[i]);
			if (ret)
				break;
		}
		if (ret) {
			FUNC3(this);
			break;
		}

		/* Try to parse the CIS tuple */
		ret = FUNC2(card, func, "CIS",
				    cis_tpl_list, FUNC0(cis_tpl_list),
				    tpl_code, this->data, tpl_link);
		if (ret == -EILSEQ || ret == -ENOENT) {
			/*
			 * The tuple is unknown or known but not parsed.
			 * Queue the tuple for the function driver.
			 */
			this->next = NULL;
			this->code = tpl_code;
			this->size = tpl_link;
			*prev = this;
			prev = &this->next;

			if (ret == -ENOENT) {
				/* warn about unknown tuples */
				FUNC7("%s: queuing unknown"
				       " CIS tuple 0x%02x (%u bytes)\n",
				       FUNC5(card->host),
				       tpl_code, tpl_link);
			}

			/* keep on analyzing tuples */
			ret = 0;
		} else {
			/*
			 * We don't need the tuple anymore if it was
			 * successfully parsed by the SDIO core or if it is
			 * not going to be queued for a driver.
			 */
			FUNC3(this);
		}

		ptr += tpl_link;
	} while (!ret);

	/*
	 * Link in all unknown tuples found in the common CIS so that
	 * drivers don't have to go digging in two places.
	 */
	if (func)
		*prev = card->tuples;

	return ret;
}