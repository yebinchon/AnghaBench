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
struct lan9303_alr_cache_entry {int stp_override; int /*<<< orphan*/  port_map; int /*<<< orphan*/  mac_addr; } ;
struct lan9303 {int /*<<< orphan*/  alr_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 struct lan9303_alr_cache_entry* FUNC2 (struct lan9303*) ; 
 struct lan9303_alr_cache_entry* FUNC3 (struct lan9303*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct lan9303*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct lan9303 *chip, const u8 *mac, int port,
				bool stp_override)
{
	struct lan9303_alr_cache_entry *entr;

	FUNC5(&chip->alr_mutex);
	entr = FUNC3(chip, mac);
	if (!entr) { /*New entry */
		entr = FUNC2(chip);
		if (!entr) {
			FUNC6(&chip->alr_mutex);
			return -ENOSPC;
		}
		FUNC1(entr->mac_addr, mac);
	}
	entr->port_map |= FUNC0(port);
	entr->stp_override = stp_override;
	FUNC4(chip, mac, entr->port_map, stp_override);
	FUNC6(&chip->alr_mutex);

	return 0;
}