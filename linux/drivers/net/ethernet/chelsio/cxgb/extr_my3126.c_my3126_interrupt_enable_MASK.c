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
struct cphy {int /*<<< orphan*/  elmer_gpo; int /*<<< orphan*/  adapter; int /*<<< orphan*/  phy_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_ELMER0_GPO ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct cphy *cphy)
{
	FUNC0(&cphy->phy_update, HZ/30);
	FUNC1(cphy->adapter, A_ELMER0_GPO, &cphy->elmer_gpo);
	return 0;
}