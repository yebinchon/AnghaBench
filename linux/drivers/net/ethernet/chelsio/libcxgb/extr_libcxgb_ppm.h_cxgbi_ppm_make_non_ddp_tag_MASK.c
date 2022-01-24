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
typedef  unsigned int u32 ;
struct cxgbi_tag_format {unsigned int no_ddp_mask; unsigned int idx_bits; unsigned int color_bits; unsigned int idx_clr_mask; } ;
struct cxgbi_ppm {struct cxgbi_tag_format tformat; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct cxgbi_ppm*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 

__attribute__((used)) static inline int FUNC2(struct cxgbi_ppm *ppm,
					     u32 sw_tag,
					     u32 *final_tag)
{
	struct cxgbi_tag_format *tformat = &ppm->tformat;

	if (!FUNC0(ppm, sw_tag)) {
		FUNC1("sw_tag 0x%x NOT usable.\n", sw_tag);
		return -EINVAL;
	}

	if (!sw_tag) {
		*final_tag = tformat->no_ddp_mask;
	} else {
		unsigned int shift = tformat->idx_bits + tformat->color_bits;
		u32 lower = sw_tag & tformat->idx_clr_mask;
		u32 upper = (sw_tag >> shift) << (shift + 1);

		*final_tag = upper | tformat->no_ddp_mask | lower;
	}
	return 0;
}