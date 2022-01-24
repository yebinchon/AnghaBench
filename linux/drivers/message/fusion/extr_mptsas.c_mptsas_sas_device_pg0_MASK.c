#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct mptsas_devinfo {void* flags; int /*<<< orphan*/  device_info; int /*<<< orphan*/  sas_address; int /*<<< orphan*/  channel; int /*<<< orphan*/  phys_disk_num; int /*<<< orphan*/  id; int /*<<< orphan*/  port_id; int /*<<< orphan*/  phy_id; void* slot; void* handle_enclosure; void* handle_parent; void* handle; } ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_13__ {TYPE_4__* ehdr; } ;
struct TYPE_17__ {int physAddr; int /*<<< orphan*/  action; int /*<<< orphan*/  timeout; scalar_t__ dir; scalar_t__ pageAddr; TYPE_1__ cfghdr; } ;
struct TYPE_16__ {int ExtPageLength; int /*<<< orphan*/  ExtPageType; int /*<<< orphan*/  PageType; scalar_t__ Reserved2; scalar_t__ Reserved1; scalar_t__ PageNumber; int /*<<< orphan*/  PageVersion; } ;
struct TYPE_15__ {int /*<<< orphan*/  pcidev; } ;
struct TYPE_14__ {int /*<<< orphan*/  Flags; int /*<<< orphan*/  DeviceInfo; int /*<<< orphan*/  SASAddress; int /*<<< orphan*/  Bus; int /*<<< orphan*/  TargetID; int /*<<< orphan*/  PhysicalPort; int /*<<< orphan*/  PhyNum; int /*<<< orphan*/  Slot; int /*<<< orphan*/  EnclosureHandle; int /*<<< orphan*/  ParentDevHandle; int /*<<< orphan*/  DevHandle; } ;
typedef  TYPE_2__ SasDevicePage0_t ;
typedef  TYPE_3__ MPT_ADAPTER ;
typedef  TYPE_4__ ConfigExtendedPageHeader_t ;
typedef  TYPE_5__ CONFIGPARMS ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_HEADER ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_READ_CURRENT ; 
 int /*<<< orphan*/  MPI_CONFIG_EXTPAGETYPE_SAS_DEVICE ; 
 int /*<<< orphan*/  MPI_CONFIG_PAGETYPE_EXTENDED ; 
 int MPI_IOCSTATUS_CONFIG_INVALID_PAGE ; 
 int /*<<< orphan*/  MPI_SASDEVICE0_PAGEVERSION ; 
 int /*<<< orphan*/  SAS_CONFIG_PAGE_TIMEOUT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mptsas_devinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,TYPE_2__*,int) ; 

__attribute__((used)) static int
FUNC9(MPT_ADAPTER *ioc, struct mptsas_devinfo *device_info,
		u32 form, u32 form_specific)
{
	ConfigExtendedPageHeader_t hdr;
	CONFIGPARMS cfg;
	SasDevicePage0_t *buffer;
	dma_addr_t dma_handle;
	__le64 sas_address;
	int error=0;

	hdr.PageVersion = MPI_SASDEVICE0_PAGEVERSION;
	hdr.ExtPageLength = 0;
	hdr.PageNumber = 0;
	hdr.Reserved1 = 0;
	hdr.Reserved2 = 0;
	hdr.PageType = MPI_CONFIG_PAGETYPE_EXTENDED;
	hdr.ExtPageType = MPI_CONFIG_EXTPAGETYPE_SAS_DEVICE;

	cfg.cfghdr.ehdr = &hdr;
	cfg.pageAddr = form + form_specific;
	cfg.physAddr = -1;
	cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
	cfg.dir = 0;	/* read */
	cfg.timeout = SAS_CONFIG_PAGE_TIMEOUT;

	FUNC4(device_info, 0, sizeof(struct mptsas_devinfo));
	error = FUNC5(ioc, &cfg);
	if (error)
		goto out;
	if (!hdr.ExtPageLength) {
		error = -ENXIO;
		goto out;
	}

	buffer = FUNC7(ioc->pcidev, hdr.ExtPageLength * 4,
				      &dma_handle);
	if (!buffer) {
		error = -ENOMEM;
		goto out;
	}

	cfg.physAddr = dma_handle;
	cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;

	error = FUNC5(ioc, &cfg);

	if (error == MPI_IOCSTATUS_CONFIG_INVALID_PAGE) {
		error = -ENODEV;
		goto out_free_consistent;
	}

	if (error)
		goto out_free_consistent;

	FUNC6(ioc, buffer);

	FUNC4(device_info, 0, sizeof(struct mptsas_devinfo));
	device_info->handle = FUNC0(buffer->DevHandle);
	device_info->handle_parent = FUNC0(buffer->ParentDevHandle);
	device_info->handle_enclosure =
	    FUNC0(buffer->EnclosureHandle);
	device_info->slot = FUNC0(buffer->Slot);
	device_info->phy_id = buffer->PhyNum;
	device_info->port_id = buffer->PhysicalPort;
	device_info->id = buffer->TargetID;
	device_info->phys_disk_num = ~0;
	device_info->channel = buffer->Bus;
	FUNC3(&sas_address, &buffer->SASAddress, sizeof(__le64));
	device_info->sas_address = FUNC2(sas_address);
	device_info->device_info =
	    FUNC1(buffer->DeviceInfo);
	device_info->flags = FUNC0(buffer->Flags);

 out_free_consistent:
	FUNC8(ioc->pcidev, hdr.ExtPageLength * 4,
			    buffer, dma_handle);
 out:
	return error;
}