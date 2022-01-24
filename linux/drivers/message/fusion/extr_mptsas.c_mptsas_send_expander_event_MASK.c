#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mptsas_portinfo {int num_phys; TYPE_2__* phy_info; } ;
struct fw_event_work {scalar_t__ event_data; int /*<<< orphan*/ * ioc; } ;
typedef  void* __le64 ;
struct TYPE_7__ {scalar_t__ ReasonCode; scalar_t__ NumPhys; int /*<<< orphan*/  ParentDevHandle; int /*<<< orphan*/  DevHandle; int /*<<< orphan*/  SASAddress; } ;
struct TYPE_5__ {void* handle_parent; void* sas_address; } ;
struct TYPE_6__ {TYPE_1__ identify; void* handle; struct mptsas_portinfo* portinfo; } ;
typedef  TYPE_3__ MpiEventDataSasExpanderStatusChange_t ;
typedef  int /*<<< orphan*/  MPT_ADAPTER ;

/* Variables and functions */
 scalar_t__ MPI_EVENT_SAS_EXP_RC_ADDED ; 
 scalar_t__ MPI_EVENT_SAS_EXP_RC_NOT_RESPONDING ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void**,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mptsas_portinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mptsas_portinfo*) ; 
 struct mptsas_portinfo* FUNC6 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct fw_event_work*) ; 

__attribute__((used)) static void
FUNC8(struct fw_event_work *fw_event)
{
	MPT_ADAPTER *ioc;
	MpiEventDataSasExpanderStatusChange_t *expander_data;
	struct mptsas_portinfo *port_info;
	__le64 sas_address;
	int i;

	ioc = fw_event->ioc;
	expander_data = (MpiEventDataSasExpanderStatusChange_t *)
	    fw_event->event_data;
	FUNC2(&sas_address, &expander_data->SASAddress, sizeof(__le64));
	sas_address = FUNC1(sas_address);
	port_info = FUNC6(ioc, sas_address);

	if (expander_data->ReasonCode == MPI_EVENT_SAS_EXP_RC_ADDED) {
		if (port_info) {
			for (i = 0; i < port_info->num_phys; i++) {
				port_info->phy_info[i].portinfo = port_info;
				port_info->phy_info[i].handle =
				    FUNC0(expander_data->DevHandle);
				port_info->phy_info[i].identify.sas_address =
				    FUNC1(sas_address);
				port_info->phy_info[i].identify.handle_parent =
				    FUNC0(expander_data->ParentDevHandle);
			}
			FUNC5(ioc, port_info);
		} else if (!port_info && expander_data->NumPhys)
			FUNC4(ioc, expander_data);
	} else if (expander_data->ReasonCode ==
	    MPI_EVENT_SAS_EXP_RC_NOT_RESPONDING)
		FUNC3(ioc, port_info, 0);

	FUNC7(ioc, fw_event);
}