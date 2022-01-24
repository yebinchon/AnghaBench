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
struct fman_mac {int /*<<< orphan*/ * unicast_addr_hash; int /*<<< orphan*/ * multicast_addr_hash; int /*<<< orphan*/  mac_id; int /*<<< orphan*/  fm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMAN_INTR_TYPE_ERR ; 
 int /*<<< orphan*/  FMAN_MOD_MAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct fman_mac *tgec)
{
	FUNC0(tgec->fm, FMAN_MOD_MAC, tgec->mac_id,
			     FMAN_INTR_TYPE_ERR);

	/* release the driver's group hash table */
	FUNC1(tgec->multicast_addr_hash);
	tgec->multicast_addr_hash = NULL;

	/* release the driver's individual hash table */
	FUNC1(tgec->unicast_addr_hash);
	tgec->unicast_addr_hash = NULL;
}