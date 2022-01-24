#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct _MPT_SCSI_HOST {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/ * Data; int /*<<< orphan*/  Event; } ;
struct TYPE_7__ {scalar_t__ bus_type; int /*<<< orphan*/  sh; } ;
typedef  TYPE_1__ MPT_ADAPTER ;
typedef  TYPE_2__ EventNotificationReply_t ;

/* Variables and functions */
 scalar_t__ MPI_EVENT_INTEGRATED_RAID ; 
 int MPI_EVENT_RAID_RC_DOMAIN_VAL_NEEDED ; 
 scalar_t__ SPI ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct _MPT_SCSI_HOST*,int) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 struct _MPT_SCSI_HOST* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(MPT_ADAPTER *ioc, EventNotificationReply_t *pEvReply)
{
	u8 event = FUNC0(pEvReply->Event) & 0xFF;
	struct _MPT_SCSI_HOST *hd = FUNC3(ioc->sh);

	if (ioc->bus_type != SPI)
		return 0;

	if (hd && event ==  MPI_EVENT_INTEGRATED_RAID) {
		int reason
			= (FUNC0(pEvReply->Data[0]) & 0x00FF0000) >> 16;

		if (reason == MPI_EVENT_RAID_RC_DOMAIN_VAL_NEEDED) {
			int disk = (FUNC0(pEvReply->Data[0]) & 0xFF000000) >> 24;
			FUNC1(hd, disk);
		}
	}
	return FUNC2(ioc, pEvReply);
}