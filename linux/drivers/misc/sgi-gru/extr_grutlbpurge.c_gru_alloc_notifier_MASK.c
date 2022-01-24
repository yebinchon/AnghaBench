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
struct mmu_notifier {int dummy; } ;
struct mm_struct {int dummy; } ;
struct gru_mm_struct {struct mmu_notifier ms_notifier; int /*<<< orphan*/  ms_wait_queue; int /*<<< orphan*/  ms_asid_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mmu_notifier* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gms_alloc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct gru_mm_struct* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mmu_notifier *FUNC5(struct mm_struct *mm)
{
	struct gru_mm_struct *gms;

	gms = FUNC3(sizeof(*gms), GFP_KERNEL);
	if (!gms)
		return FUNC0(-ENOMEM);
	FUNC1(gms_alloc);
	FUNC4(&gms->ms_asid_lock);
	FUNC2(&gms->ms_wait_queue);

	return &gms->ms_notifier;
}