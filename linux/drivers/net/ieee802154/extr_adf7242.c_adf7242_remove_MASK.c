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
struct spi_device {int dummy; } ;
struct adf7242_local {int /*<<< orphan*/  hw; int /*<<< orphan*/  bmux; int /*<<< orphan*/  wqueue; int /*<<< orphan*/  work; int /*<<< orphan*/  debugfs_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct adf7242_local* FUNC6 (struct spi_device*) ; 

__attribute__((used)) static int FUNC7(struct spi_device *spi)
{
	struct adf7242_local *lp = FUNC6(spi);

	FUNC1(lp->debugfs_root);

	FUNC0(&lp->work);
	FUNC2(lp->wqueue);

	FUNC4(lp->hw);
	FUNC5(&lp->bmux);
	FUNC3(lp->hw);

	return 0;
}