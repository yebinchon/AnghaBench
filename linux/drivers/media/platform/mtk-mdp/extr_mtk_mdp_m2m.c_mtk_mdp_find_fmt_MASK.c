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
typedef  size_t u32 ;
struct mtk_mdp_fmt {size_t flags; size_t pixelformat; } ;

/* Variables and functions */
 size_t FUNC0 (struct mtk_mdp_fmt const*) ; 
 size_t MTK_MDP_FMT_FLAG_CAPTURE ; 
 size_t MTK_MDP_FMT_FLAG_OUTPUT ; 
 scalar_t__ FUNC1 (size_t) ; 
 struct mtk_mdp_fmt const* mtk_mdp_formats ; 

__attribute__((used)) static const struct mtk_mdp_fmt *FUNC2(u32 pixelformat, u32 type)
{
	u32 i, flag;

	flag = FUNC1(type) ? MTK_MDP_FMT_FLAG_OUTPUT :
					   MTK_MDP_FMT_FLAG_CAPTURE;

	for (i = 0; i < FUNC0(mtk_mdp_formats); ++i) {
		if (!(mtk_mdp_formats[i].flags & flag))
			continue;
		if (mtk_mdp_formats[i].pixelformat == pixelformat)
			return &mtk_mdp_formats[i];
	}
	return NULL;
}