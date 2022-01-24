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
struct scif_p2p_info {int /*<<< orphan*/ * ppi_sg; int /*<<< orphan*/ * sg_nentries; } ;
struct scif_hw_dev {int /*<<< orphan*/  dev; } ;
struct scif_dev {struct scif_hw_dev* sdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 size_t SCIF_PPI_APER ; 
 size_t SCIF_PPI_MMIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct scif_p2p_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct scif_dev *scifdev,
				 struct scif_p2p_info *p2p)
{
	struct scif_hw_dev *sdev = scifdev->sdev;

	FUNC0(&sdev->dev, p2p->ppi_sg[SCIF_PPI_MMIO],
		     p2p->sg_nentries[SCIF_PPI_MMIO], DMA_BIDIRECTIONAL);
	FUNC0(&sdev->dev, p2p->ppi_sg[SCIF_PPI_APER],
		     p2p->sg_nentries[SCIF_PPI_APER], DMA_BIDIRECTIONAL);
	FUNC2(p2p->ppi_sg[SCIF_PPI_MMIO]);
	FUNC2(p2p->ppi_sg[SCIF_PPI_APER]);
	FUNC1(p2p);
}