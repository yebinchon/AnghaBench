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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct mlxsw_pci {struct pci_dev* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,char*,size_t,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mlxsw_pci *mlxsw_pci, char *wqe,
				  int index, char *frag_data, size_t frag_len,
				  int direction)
{
	struct pci_dev *pdev = mlxsw_pci->pdev;
	dma_addr_t mapaddr;

	mapaddr = FUNC4(pdev, frag_data, frag_len, direction);
	if (FUNC5(FUNC3(pdev, mapaddr))) {
		FUNC0(&pdev->dev, "failed to dma map tx frag\n");
		return -EIO;
	}
	FUNC1(wqe, index, mapaddr);
	FUNC2(wqe, index, frag_len);
	return 0;
}