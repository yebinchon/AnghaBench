#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct mptsas_enclosure {int /*<<< orphan*/  sep_channel; int /*<<< orphan*/  sep_id; int /*<<< orphan*/  start_channel; int /*<<< orphan*/  start_id; void* start_slot; void* num_slot; void* flags; void* enclosure_handle; int /*<<< orphan*/  enclosure_logical_id; } ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_12__ {TYPE_4__* ehdr; } ;
struct TYPE_16__ {int physAddr; int /*<<< orphan*/  action; int /*<<< orphan*/  timeout; scalar_t__ dir; scalar_t__ pageAddr; TYPE_1__ cfghdr; } ;
struct TYPE_15__ {int ExtPageLength; int /*<<< orphan*/  ExtPageType; int /*<<< orphan*/  PageType; scalar_t__ PageNumber; int /*<<< orphan*/  PageVersion; } ;
struct TYPE_14__ {int /*<<< orphan*/  pcidev; } ;
struct TYPE_13__ {int /*<<< orphan*/  SEPBus; int /*<<< orphan*/  SEPTargetID; int /*<<< orphan*/  StartBus; int /*<<< orphan*/  StartTargetID; int /*<<< orphan*/  StartSlot; int /*<<< orphan*/  NumSlots; int /*<<< orphan*/  Flags; int /*<<< orphan*/  EnclosureHandle; int /*<<< orphan*/  EnclosureLogicalID; } ;
typedef  TYPE_2__ SasEnclosurePage0_t ;
typedef  TYPE_3__ MPT_ADAPTER ;
typedef  TYPE_4__ ConfigExtendedPageHeader_t ;
typedef  TYPE_5__ CONFIGPARMS ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_HEADER ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_READ_CURRENT ; 
 int /*<<< orphan*/  MPI_CONFIG_EXTPAGETYPE_ENCLOSURE ; 
 int /*<<< orphan*/  MPI_CONFIG_PAGETYPE_EXTENDED ; 
 int /*<<< orphan*/  MPI_SASENCLOSURE0_PAGEVERSION ; 
 int /*<<< orphan*/  SAS_CONFIG_PAGE_TIMEOUT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_3__*,TYPE_5__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,TYPE_2__*,int) ; 

__attribute__((used)) static int
FUNC7(MPT_ADAPTER *ioc, struct mptsas_enclosure *enclosure,
		u32 form, u32 form_specific)
{
	ConfigExtendedPageHeader_t hdr;
	CONFIGPARMS cfg;
	SasEnclosurePage0_t *buffer;
	dma_addr_t dma_handle;
	int error;
	__le64 le_identifier;

	FUNC3(&hdr, 0, sizeof(hdr));
	hdr.PageVersion = MPI_SASENCLOSURE0_PAGEVERSION;
	hdr.PageNumber = 0;
	hdr.PageType = MPI_CONFIG_PAGETYPE_EXTENDED;
	hdr.ExtPageType = MPI_CONFIG_EXTPAGETYPE_ENCLOSURE;

	cfg.cfghdr.ehdr = &hdr;
	cfg.physAddr = -1;
	cfg.pageAddr = form + form_specific;
	cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
	cfg.dir = 0;	/* read */
	cfg.timeout = SAS_CONFIG_PAGE_TIMEOUT;

	error = FUNC4(ioc, &cfg);
	if (error)
		goto out;
	if (!hdr.ExtPageLength) {
		error = -ENXIO;
		goto out;
	}

	buffer = FUNC5(ioc->pcidev, hdr.ExtPageLength * 4,
			&dma_handle);
	if (!buffer) {
		error = -ENOMEM;
		goto out;
	}

	cfg.physAddr = dma_handle;
	cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;

	error = FUNC4(ioc, &cfg);
	if (error)
		goto out_free_consistent;

	/* save config data */
	FUNC2(&le_identifier, &buffer->EnclosureLogicalID, sizeof(__le64));
	enclosure->enclosure_logical_id = FUNC1(le_identifier);
	enclosure->enclosure_handle = FUNC0(buffer->EnclosureHandle);
	enclosure->flags = FUNC0(buffer->Flags);
	enclosure->num_slot = FUNC0(buffer->NumSlots);
	enclosure->start_slot = FUNC0(buffer->StartSlot);
	enclosure->start_id = buffer->StartTargetID;
	enclosure->start_channel = buffer->StartBus;
	enclosure->sep_id = buffer->SEPTargetID;
	enclosure->sep_channel = buffer->SEPBus;

 out_free_consistent:
	FUNC6(ioc->pcidev, hdr.ExtPageLength * 4,
			    buffer, dma_handle);
 out:
	return error;
}