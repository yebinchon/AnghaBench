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
struct camss {scalar_t__ version; int /*<<< orphan*/ * genpd_link; } ;

/* Variables and functions */
 scalar_t__ CAMSS_8x96 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct camss *camss, int id)
{
	if (camss->version == CAMSS_8x96)
		FUNC0(camss->genpd_link[id]);
}