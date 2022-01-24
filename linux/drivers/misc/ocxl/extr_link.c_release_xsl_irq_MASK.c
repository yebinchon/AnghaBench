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
struct spa {int /*<<< orphan*/  irq_name; scalar_t__ virq; } ;
struct ocxl_link {struct spa* spa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct ocxl_link*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct spa*) ; 

__attribute__((used)) static void FUNC4(struct ocxl_link *link)
{
	struct spa *spa = link->spa;

	if (spa->virq) {
		FUNC0(spa->virq, link);
		FUNC1(spa->virq);
	}
	FUNC2(spa->irq_name);
	FUNC3(spa);
}