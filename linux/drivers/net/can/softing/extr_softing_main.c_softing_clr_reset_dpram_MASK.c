#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct softing {int /*<<< orphan*/  spin; int /*<<< orphan*/ * dpram; TYPE_1__* pdat; } ;
struct TYPE_2__ {int generation; } ;

/* Variables and functions */
 size_t DPRAM_V2_RESET ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct softing *card)
{
	if (card->pdat->generation >= 2) {
		FUNC2(&card->spin);
		FUNC1(FUNC0(&card->dpram[DPRAM_V2_RESET]) | 1,
				&card->dpram[DPRAM_V2_RESET]);
		FUNC3(&card->spin);
	}
}