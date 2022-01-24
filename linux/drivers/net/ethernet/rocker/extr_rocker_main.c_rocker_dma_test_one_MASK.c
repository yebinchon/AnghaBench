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
typedef  int /*<<< orphan*/  u32 ;
struct rocker_wait {int dummy; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  TEST_DMA_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct rocker_wait*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rocker_wait*) ; 
 int /*<<< orphan*/  FUNC3 (struct rocker const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct rocker *rocker,
			       struct rocker_wait *wait, u32 test_type,
			       dma_addr_t dma_handle, const unsigned char *buf,
			       const unsigned char *expect, size_t size)
{
	const struct pci_dev *pdev = rocker->pdev;
	int i;

	FUNC2(wait);
	FUNC3(rocker, TEST_DMA_CTRL, test_type);

	if (!FUNC1(wait, HZ / 10)) {
		FUNC0(&pdev->dev, "no interrupt received within a timeout\n");
		return -EIO;
	}

	for (i = 0; i < size; i++) {
		if (buf[i] != expect[i]) {
			FUNC0(&pdev->dev, "unexpected memory content %02x at byte %x\n, %02x expected",
				buf[i], i, expect[i]);
			return -EIO;
		}
	}
	return 0;
}