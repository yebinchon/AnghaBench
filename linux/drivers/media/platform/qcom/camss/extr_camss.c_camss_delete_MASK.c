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
struct camss {scalar_t__ version; int /*<<< orphan*/ * genpd; int /*<<< orphan*/  dev; int /*<<< orphan*/  media_dev; int /*<<< orphan*/  v4l2_dev; } ;

/* Variables and functions */
 scalar_t__ CAMSS_8x96 ; 
 size_t PM_DOMAIN_VFE0 ; 
 size_t PM_DOMAIN_VFE1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct camss*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct camss *camss)
{
	FUNC5(&camss->v4l2_dev);
	FUNC3(&camss->media_dev);
	FUNC2(&camss->media_dev);

	FUNC4(camss->dev);

	if (camss->version == CAMSS_8x96) {
		FUNC0(camss->genpd[PM_DOMAIN_VFE0], true);
		FUNC0(camss->genpd[PM_DOMAIN_VFE1], true);
	}

	FUNC1(camss);
}