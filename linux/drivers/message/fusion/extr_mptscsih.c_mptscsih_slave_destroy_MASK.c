#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct scsi_target {TYPE_1__* hostdata; } ;
struct scsi_device {int /*<<< orphan*/ * hostdata; struct Scsi_Host* host; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_luns; } ;
typedef  TYPE_1__ VirtTarget ;
typedef  int /*<<< orphan*/  VirtDevice ;
typedef  int /*<<< orphan*/  MPT_SCSI_HOST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct scsi_target* FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/ * FUNC4 (struct Scsi_Host*) ; 

void
FUNC5(struct scsi_device *sdev)
{
	struct Scsi_Host	*host = sdev->host;
	MPT_SCSI_HOST		*hd = FUNC4(host);
	VirtTarget		*vtarget;
	VirtDevice		*vdevice;
	struct scsi_target 	*starget;

	starget = FUNC3(sdev);
	vtarget = starget->hostdata;
	vdevice = sdev->hostdata;
	if (!vdevice)
		return;

	FUNC1(hd, vdevice);
	vtarget->num_luns--;
	FUNC2(hd, vdevice);
	FUNC0(vdevice);
	sdev->hostdata = NULL;
}