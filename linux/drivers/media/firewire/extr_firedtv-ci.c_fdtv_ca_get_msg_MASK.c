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
struct firedtv_tuner_status {int ca_mmi; } ;
struct firedtv {int ca_last_command; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EACCES ; 
#define  EN50221_TAG_APP_INFO_ENQUIRY 129 
#define  EN50221_TAG_CA_INFO_ENQUIRY 128 
 int FUNC0 (struct firedtv*,struct firedtv_tuner_status*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct firedtv*,void*) ; 
 int FUNC3 (struct firedtv*,void*) ; 
 int FUNC4 (struct firedtv*,void*) ; 

__attribute__((used)) static int FUNC5(struct firedtv *fdtv, void *arg)
{
	struct firedtv_tuner_status stat;
	int err;

	switch (fdtv->ca_last_command) {
	case EN50221_TAG_APP_INFO_ENQUIRY:
		err = FUNC2(fdtv, arg);
		break;
	case EN50221_TAG_CA_INFO_ENQUIRY:
		err = FUNC4(fdtv, arg);
		break;
	default:
		err = FUNC0(fdtv, &stat);
		if (err)
			break;
		if (stat.ca_mmi == 1)
			err = FUNC3(fdtv, arg);
		else {
			FUNC1(fdtv->device, "unhandled CA message 0x%08x\n",
				 fdtv->ca_last_command);
			err = -EACCES;
		}
	}
	fdtv->ca_last_command = 0;
	return err;
}