#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int dma_addr_t ;
struct TYPE_12__ {TYPE_4__* hdr; } ;
struct TYPE_15__ {int physAddr; int timeout; int PageLength; int /*<<< orphan*/  action; TYPE_1__ cfghdr; int /*<<< orphan*/  PageType; } ;
struct TYPE_14__ {int /*<<< orphan*/  pcidev; int /*<<< orphan*/  board_tracer; int /*<<< orphan*/  board_assembly; int /*<<< orphan*/  board_name; } ;
struct TYPE_13__ {int /*<<< orphan*/  BoardTracerNumber; int /*<<< orphan*/  BoardAssembly; int /*<<< orphan*/  BoardName; } ;
typedef  TYPE_2__ ManufacturingPage0_t ;
typedef  TYPE_3__ MPT_ADAPTER ;
typedef  TYPE_4__ ConfigPageHeader_t ;
typedef  TYPE_4__ CONFIGPARMS ;

/* Variables and functions */
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_HEADER ; 
 int /*<<< orphan*/  MPI_CONFIG_ACTION_PAGE_READ_CURRENT ; 
 int /*<<< orphan*/  MPI_CONFIG_PAGETYPE_MANUFACTURING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_3__*,TYPE_4__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC5(MPT_ADAPTER *ioc)
{
	CONFIGPARMS		cfg;
	ConfigPageHeader_t	hdr;
	dma_addr_t		buf_dma;
	ManufacturingPage0_t	*pbuf = NULL;

	FUNC1(&cfg, 0 , sizeof(CONFIGPARMS));
	FUNC1(&hdr, 0 , sizeof(ConfigPageHeader_t));

	hdr.PageType = MPI_CONFIG_PAGETYPE_MANUFACTURING;
	cfg.cfghdr.hdr = &hdr;
	cfg.physAddr = -1;
	cfg.action = MPI_CONFIG_ACTION_PAGE_HEADER;
	cfg.timeout = 10;

	if (FUNC2(ioc, &cfg) != 0)
		goto out;

	if (!cfg.cfghdr.hdr->PageLength)
		goto out;

	cfg.action = MPI_CONFIG_ACTION_PAGE_READ_CURRENT;
	pbuf = FUNC3(ioc->pcidev, hdr.PageLength * 4, &buf_dma);
	if (!pbuf)
		goto out;

	cfg.physAddr = buf_dma;

	if (FUNC2(ioc, &cfg) != 0)
		goto out;

	FUNC0(ioc->board_name, pbuf->BoardName, sizeof(ioc->board_name));
	FUNC0(ioc->board_assembly, pbuf->BoardAssembly, sizeof(ioc->board_assembly));
	FUNC0(ioc->board_tracer, pbuf->BoardTracerNumber, sizeof(ioc->board_tracer));

out:

	if (pbuf)
		FUNC4(ioc->pcidev, hdr.PageLength * 4, pbuf, buf_dma);
}