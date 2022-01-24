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
struct bgmac {int /*<<< orphan*/  mii_bus; } ;
struct bcma_device {int dummy; } ;

/* Variables and functions */
 struct bgmac* FUNC0 (struct bcma_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC4 (struct bgmac*) ; 

__attribute__((used)) static void FUNC5(struct bcma_device *core)
{
	struct bgmac *bgmac = FUNC0(core);

	FUNC1(bgmac->mii_bus);
	FUNC3(bgmac);
	FUNC2(core, NULL);
	FUNC4(bgmac);
}