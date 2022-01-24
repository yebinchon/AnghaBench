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
typedef  int u16 ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;
struct av7110 {int arm_fw; int arm_rtsl; int arm_vid; int arm_app; int avtype; TYPE_1__ dvb_adapter; } ;

/* Variables and functions */
 int COMTYPE_REQUEST ; 
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int ReqVersion ; 
 scalar_t__ FUNC1 (struct av7110*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,struct av7110*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 

int FUNC4(struct av7110 *av7110)
{
	u16 buf[20];
	u16 tag = ((COMTYPE_REQUEST << 8) + ReqVersion);

	FUNC2(4, "%p\n", av7110);

	if (FUNC1(av7110, tag, buf, 16)) {
		FUNC3("dvb-ttpci: failed to boot firmware @ card %d\n",
		       av7110->dvb_adapter.num);
		return -EIO;
	}

	av7110->arm_fw = (buf[0] << 16) + buf[1];
	av7110->arm_rtsl = (buf[2] << 16) + buf[3];
	av7110->arm_vid = (buf[4] << 16) + buf[5];
	av7110->arm_app = (buf[6] << 16) + buf[7];
	av7110->avtype = (buf[8] << 16) + buf[9];

	FUNC3("dvb-ttpci: info @ card %d: firm %08x, rtsl %08x, vid %08x, app %08x\n",
	       av7110->dvb_adapter.num, av7110->arm_fw,
	       av7110->arm_rtsl, av7110->arm_vid, av7110->arm_app);

	/* print firmware capabilities */
	if (FUNC0(av7110->arm_app))
		FUNC3("dvb-ttpci: firmware @ card %d supports CI link layer interface\n",
		       av7110->dvb_adapter.num);
	else
		FUNC3("dvb-ttpci: no firmware support for CI link layer interface @ card %d\n",
		       av7110->dvb_adapter.num);

	return 0;
}