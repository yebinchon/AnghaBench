#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  TYPE_2__* pRaidPhysDiskPage0_t ;
typedef  int dma_addr_t ;
struct TYPE_19__ {int /*<<< orphan*/  pcidev; } ;
struct TYPE_16__ {TYPE_3__* hdr; } ;
struct TYPE_18__ {int physAddr; int PageLength; int /*<<< orphan*/  MaxLBA; int /*<<< orphan*/  pageAddr; int /*<<< orphan*/  action; TYPE_1__ cfghdr; int /*<<< orphan*/  PageType; int /*<<< orphan*/  PageVersion; } ;
struct TYPE_17__ {int /*<<< orphan*/  MaxLBA; } ;
typedef  TYPE_3__ RaidPhysDiskPage0_t ;
typedef  TYPE_4__ MPT_ADAPTER ;
typedef  TYPE_3__ ConfigPageHeader_t ;
typedef  TYPE_3__ CONFIGPARMS ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_HEADER ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_READ_CURRENT ; 
 int /*<<< orphan*/  MPI_CONFIG_PAGETYPE_RAID_PHYSDISK ; 
 int /*<<< orphan*/  MPI_RAIDPHYSDISKPAGE0_PAGEVERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,TYPE_2__*,int) ; 

int
FUNC6(MPT_ADAPTER *ioc, u8 phys_disk_num,
			RaidPhysDiskPage0_t *phys_disk)
{
	CONFIGPARMS			cfg;
	ConfigPageHeader_t		hdr;
	dma_addr_t			dma_handle;
	pRaidPhysDiskPage0_t		buffer = NULL;
	int				rc;

	FUNC2(&cfg, 0 , sizeof(CONFIGPARMS));
	FUNC2(&hdr, 0 , sizeof(ConfigPageHeader_t));
	FUNC2(phys_disk, 0, sizeof(RaidPhysDiskPage0_t));

	hdr.PageVersion = MPI_RAIDPHYSDISKPAGE0_PAGEVERSION;
	hdr.PageType = MPI_CONFIG_PAGETYPE_RAID_PHYSDISK;
	cfg.cfghdr.hdr = &hdr;
	cfg.physAddr = -1;
	cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;

	if (FUNC3(ioc, &cfg) != 0) {
		rc = -EFAULT;
		goto out;
	}

	if (!hdr.PageLength) {
		rc = -EFAULT;
		goto out;
	}

	buffer = FUNC4(ioc->pcidev, hdr.PageLength * 4,
	    &dma_handle);

	if (!buffer) {
		rc = -ENOMEM;
		goto out;
	}

	cfg.physAddr = dma_handle;
	cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;
	cfg.pageAddr = phys_disk_num;

	if (FUNC3(ioc, &cfg) != 0) {
		rc = -EFAULT;
		goto out;
	}

	rc = 0;
	FUNC1(phys_disk, buffer, sizeof(*buffer));
	phys_disk->MaxLBA = FUNC0(buffer->MaxLBA);

 out:

	if (buffer)
		FUNC5(ioc->pcidev, hdr.PageLength * 4, buffer,
		    dma_handle);

	return rc;
}