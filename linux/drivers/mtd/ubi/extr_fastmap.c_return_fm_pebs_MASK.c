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
struct ubi_fastmap_layout {int used_blocks; int /*<<< orphan*/ ** e; int /*<<< orphan*/ * to_be_tortured; } ;
struct ubi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubi_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ubi_device *ubi,
			   struct ubi_fastmap_layout *fm)
{
	int i;

	if (!fm)
		return;

	for (i = 0; i < fm->used_blocks; i++) {
		if (fm->e[i]) {
			FUNC0(ubi, fm->e[i], i,
					  fm->to_be_tortured[i]);
			fm->e[i] = NULL;
		}
	}
}