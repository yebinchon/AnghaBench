#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct bgmac {TYPE_1__* net_dev; int /*<<< orphan*/  napi; } ;
struct TYPE_6__ {int /*<<< orphan*/  phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC1 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC2 (struct bgmac*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct bgmac *bgmac)
{
	if (!FUNC5(bgmac->net_dev))
		return 0;

	FUNC9(bgmac->net_dev->phydev);

	FUNC6(bgmac->net_dev);

	FUNC3(&bgmac->napi);

	FUNC7(bgmac->net_dev);
	FUNC4(bgmac->net_dev);
	FUNC8(bgmac->net_dev);

	FUNC0(bgmac);
	FUNC1(bgmac);
	FUNC2(bgmac);

	return 0;
}