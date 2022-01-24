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
struct mtk_smi_larb {scalar_t__ base; int /*<<< orphan*/ * mmu; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ SMI_LARB_MMU_EN ; 
 struct mtk_smi_larb* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct device *dev)
{
	struct mtk_smi_larb *larb = FUNC0(dev);

	FUNC1(*larb->mmu, larb->base + SMI_LARB_MMU_EN);
}