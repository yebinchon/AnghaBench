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
struct pci_dev {int dummy; } ;
struct mlxsw_pci {struct pci_dev* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 size_t FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static void FUNC3(struct mlxsw_pci *mlxsw_pci, char *wqe,
				     int index, int direction)
{
	struct pci_dev *pdev = mlxsw_pci->pdev;
	size_t frag_len = FUNC1(wqe, index);
	dma_addr_t mapaddr = FUNC0(wqe, index);

	if (!frag_len)
		return;
	FUNC2(pdev, mapaddr, frag_len, direction);
}