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
typedef  int /*<<< orphan*/  u8 ;
struct ethtool_eeprom {scalar_t__ len; int offset; } ;
struct efx_nic {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  MC_CMD_MEDIA_QSFP_PLUS 129 
#define  MC_CMD_MEDIA_SFP_PLUS 128 
 int SFF_8079_NUM_PAGES ; 
 int SFF_8436_NUM_PAGES ; 
 int SFF_8472_NUM_PAGES ; 
 int SFP_PAGE_SIZE ; 
 int FUNC0 (struct efx_nic*,int,int /*<<< orphan*/ *,unsigned int,scalar_t__) ; 
 int FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct efx_nic *efx,
					  struct ethtool_eeprom *ee, u8 *data)
{
	int rc;
	ssize_t space_remaining = ee->len;
	unsigned int page_off;
	bool ignore_missing;
	int num_pages;
	int page;

	switch (FUNC1(efx)) {
	case MC_CMD_MEDIA_SFP_PLUS:
		num_pages = FUNC2(efx) > 0 ?
				SFF_8472_NUM_PAGES : SFF_8079_NUM_PAGES;
		page = 0;
		ignore_missing = false;
		break;
	case MC_CMD_MEDIA_QSFP_PLUS:
		num_pages = SFF_8436_NUM_PAGES;
		page = -1; /* We obtain the lower page by asking for -1. */
		ignore_missing = true; /* Ignore missing pages after page 0. */
		break;
	default:
		return -EOPNOTSUPP;
	}

	page_off = ee->offset % SFP_PAGE_SIZE;
	page += ee->offset / SFP_PAGE_SIZE;

	while (space_remaining && (page < num_pages)) {
		rc = FUNC0(efx, page,
							 data, page_off,
							 space_remaining);

		if (rc > 0) {
			space_remaining -= rc;
			data += rc;
			page_off = 0;
			page++;
		} else if (rc == 0) {
			space_remaining = 0;
		} else if (ignore_missing && (page > 0)) {
			int intended_size = SFP_PAGE_SIZE - page_off;

			space_remaining -= intended_size;
			if (space_remaining < 0) {
				space_remaining = 0;
			} else {
				FUNC3(data, 0, intended_size);
				data += intended_size;
				page_off = 0;
				page++;
				rc = 0;
			}
		} else {
			return rc;
		}
	}

	return 0;
}