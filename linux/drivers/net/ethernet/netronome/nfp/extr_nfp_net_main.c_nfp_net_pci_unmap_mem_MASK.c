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
struct nfp_pf {scalar_t__ data_vnic_bar; scalar_t__ qc_area; scalar_t__ mac_stats_bar; scalar_t__ vf_cfg_bar; scalar_t__ vfcfg_tbl2_area; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct nfp_pf *pf)
{
	if (pf->vfcfg_tbl2_area)
		FUNC0(pf->vfcfg_tbl2_area);
	if (pf->vf_cfg_bar)
		FUNC0(pf->vf_cfg_bar);
	if (pf->mac_stats_bar)
		FUNC0(pf->mac_stats_bar);
	FUNC0(pf->qc_area);
	FUNC0(pf->data_vnic_bar);
}