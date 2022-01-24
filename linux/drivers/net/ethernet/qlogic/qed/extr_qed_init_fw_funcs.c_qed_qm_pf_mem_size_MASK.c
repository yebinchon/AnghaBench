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
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int QM_OTHER_PQS_PER_PF ; 
 int FUNC0 (int) ; 

u32 FUNC1(u32 num_pf_cids,
		       u32 num_vf_cids,
		       u32 num_tids, u16 num_pf_pqs, u16 num_vf_pqs)
{
	return FUNC0(num_pf_cids) * num_pf_pqs +
	       FUNC0(num_vf_cids) * num_vf_pqs +
	       FUNC0(num_pf_cids + num_tids) * QM_OTHER_PQS_PER_PF;
}