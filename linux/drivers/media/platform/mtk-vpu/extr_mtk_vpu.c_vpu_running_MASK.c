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
struct mtk_vpu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VPU_RESET ; 
 int FUNC1 (struct mtk_vpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct mtk_vpu *vpu)
{
	return FUNC1(vpu, VPU_RESET) & FUNC0(0);
}