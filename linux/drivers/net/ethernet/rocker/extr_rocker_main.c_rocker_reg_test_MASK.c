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
typedef  int u64 ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TEST_REG ; 
 int /*<<< orphan*/  TEST_REG64 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 () ; 
 int FUNC2 (struct rocker const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rocker const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rocker const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rocker const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(const struct rocker *rocker)
{
	const struct pci_dev *pdev = rocker->pdev;
	u64 test_reg;
	u64 rnd;

	rnd = FUNC1();
	rnd >>= 1;
	FUNC4(rocker, TEST_REG, rnd);
	test_reg = FUNC2(rocker, TEST_REG);
	if (test_reg != rnd * 2) {
		FUNC0(&pdev->dev, "unexpected 32bit register value %08llx, expected %08llx\n",
			test_reg, rnd * 2);
		return -EIO;
	}

	rnd = FUNC1();
	rnd <<= 31;
	rnd |= FUNC1();
	FUNC5(rocker, TEST_REG64, rnd);
	test_reg = FUNC3(rocker, TEST_REG64);
	if (test_reg != rnd * 2) {
		FUNC0(&pdev->dev, "unexpected 64bit register value %16llx, expected %16llx\n",
			test_reg, rnd * 2);
		return -EIO;
	}

	return 0;
}