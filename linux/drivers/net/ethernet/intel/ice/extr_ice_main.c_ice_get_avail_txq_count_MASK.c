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
typedef  int /*<<< orphan*/  u16 ;
struct ice_pf {int /*<<< orphan*/  max_pf_txqs; int /*<<< orphan*/  avail_q_mutex; int /*<<< orphan*/  avail_txqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

u16 FUNC1(struct ice_pf *pf)
{
	return FUNC0(pf->avail_txqs, &pf->avail_q_mutex,
				     pf->max_pf_txqs);
}