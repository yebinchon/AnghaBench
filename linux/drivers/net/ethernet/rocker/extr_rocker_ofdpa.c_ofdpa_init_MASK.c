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
struct rocker {struct ofdpa* wpriv; } ;
struct ofdpa {int /*<<< orphan*/  ageing_time; int /*<<< orphan*/  fdb_cleanup_timer; int /*<<< orphan*/  neigh_tbl_lock; int /*<<< orphan*/  neigh_tbl; int /*<<< orphan*/  internal_vlan_tbl_lock; int /*<<< orphan*/  internal_vlan_tbl; int /*<<< orphan*/  fdb_tbl_lock; int /*<<< orphan*/  fdb_tbl; int /*<<< orphan*/  group_tbl_lock; int /*<<< orphan*/  group_tbl; int /*<<< orphan*/  flow_tbl_lock; int /*<<< orphan*/  flow_tbl; struct rocker* rocker; } ;

/* Variables and functions */
 int /*<<< orphan*/  BR_DEFAULT_AGEING_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ofdpa_fdb_cleanup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rocker *rocker)
{
	struct ofdpa *ofdpa = rocker->wpriv;

	ofdpa->rocker = rocker;

	FUNC0(ofdpa->flow_tbl);
	FUNC2(&ofdpa->flow_tbl_lock);

	FUNC0(ofdpa->group_tbl);
	FUNC2(&ofdpa->group_tbl_lock);

	FUNC0(ofdpa->fdb_tbl);
	FUNC2(&ofdpa->fdb_tbl_lock);

	FUNC0(ofdpa->internal_vlan_tbl);
	FUNC2(&ofdpa->internal_vlan_tbl_lock);

	FUNC0(ofdpa->neigh_tbl);
	FUNC2(&ofdpa->neigh_tbl_lock);

	FUNC3(&ofdpa->fdb_cleanup_timer, ofdpa_fdb_cleanup, 0);
	FUNC1(&ofdpa->fdb_cleanup_timer, jiffies);

	ofdpa->ageing_time = BR_DEFAULT_AGEING_TIME;

	return 0;
}