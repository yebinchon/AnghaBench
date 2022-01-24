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
struct camss {unsigned int csiphy_num; unsigned int csid_num; unsigned int vfe_num; int /*<<< orphan*/ * vfe; int /*<<< orphan*/  ispif; int /*<<< orphan*/ * csid; int /*<<< orphan*/ * csiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct camss *camss)
{
	unsigned int i;

	for (i = 0; i < camss->csiphy_num; i++)
		FUNC1(&camss->csiphy[i]);

	for (i = 0; i < camss->csid_num; i++)
		FUNC0(&camss->csid[i]);

	FUNC2(&camss->ispif);

	for (i = 0; i < camss->vfe_num; i++)
		FUNC3(&camss->vfe[i]);
}