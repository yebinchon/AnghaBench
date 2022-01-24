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

/* Variables and functions */
 int /*<<< orphan*/  VPIF_CH2_BTM_STRT_ADD_CHROMA ; 
 int /*<<< orphan*/  VPIF_CH2_BTM_STRT_ADD_LUMA ; 
 int /*<<< orphan*/  VPIF_CH2_TOP_STRT_ADD_CHROMA ; 
 int /*<<< orphan*/  VPIF_CH2_TOP_STRT_ADD_LUMA ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(unsigned long top_strt_luma,
					 unsigned long btm_strt_luma,
					 unsigned long top_strt_chroma,
					 unsigned long btm_strt_chroma)
{
	FUNC0(top_strt_luma, VPIF_CH2_TOP_STRT_ADD_LUMA);
	FUNC0(btm_strt_luma, VPIF_CH2_BTM_STRT_ADD_LUMA);
	FUNC0(top_strt_chroma, VPIF_CH2_TOP_STRT_ADD_CHROMA);
	FUNC0(btm_strt_chroma, VPIF_CH2_BTM_STRT_ADD_CHROMA);
}