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
struct lan9303_alr_cache_entry {int /*<<< orphan*/  mac_addr; } ;
struct lan9303 {struct lan9303_alr_cache_entry* alr_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LAN9303_NUM_ALR_RECORDS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static struct lan9303_alr_cache_entry *
FUNC2(struct lan9303 *chip, const u8 *mac_addr)
{
	int i;
	struct lan9303_alr_cache_entry *entr = chip->alr_cache;

	FUNC0(sizeof(struct lan9303_alr_cache_entry) & 1,
			 "ether_addr_equal require u16 alignment");

	for (i = 0; i < LAN9303_NUM_ALR_RECORDS; i++, entr++)
		if (FUNC1(entr->mac_addr, mac_addr))
			return entr;

	return NULL;
}