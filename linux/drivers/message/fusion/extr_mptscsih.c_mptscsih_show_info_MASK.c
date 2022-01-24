#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  Word; } ;
struct TYPE_7__ {int /*<<< orphan*/  NumberOfPorts; TYPE_1__ FWVersion; } ;
struct TYPE_9__ {int /*<<< orphan*/  req_depth; TYPE_2__ facts; int /*<<< orphan*/  prod_name; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_4__* ioc; } ;
typedef  TYPE_3__ MPT_SCSI_HOST ;
typedef  TYPE_4__ MPT_ADAPTER ;

/* Variables and functions */
 int /*<<< orphan*/  MPT_FW_REV_MAGIC_ID_STRING ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int /*<<< orphan*/ ,...) ; 
 TYPE_3__* FUNC1 (struct Scsi_Host*) ; 

int FUNC2(struct seq_file *m, struct Scsi_Host *host)
{
	MPT_SCSI_HOST	*hd = FUNC1(host);
	MPT_ADAPTER	*ioc = hd->ioc;

	FUNC0(m, "%s: %s, ", ioc->name, ioc->prod_name);
	FUNC0(m, "%s%08xh, ", MPT_FW_REV_MAGIC_ID_STRING, ioc->facts.FWVersion.Word);
	FUNC0(m, "Ports=%d, ", ioc->facts.NumberOfPorts);
	FUNC0(m, "MaxQ=%d\n", ioc->req_depth);

	return 0;
}