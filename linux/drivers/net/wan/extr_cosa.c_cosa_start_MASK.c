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
struct cosa_data {int usage; int firmware_status; int startaddr; int /*<<< orphan*/  num; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int COSA_FW_DOWNLOAD ; 
 int COSA_FW_RESET ; 
 int COSA_FW_START ; 
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,...) ; 
 int FUNC2 (struct cosa_data*,int) ; 

__attribute__((used)) static inline int FUNC3(struct cosa_data *cosa, int address)
{
	int i;

	if (cosa->usage > 1)
		FUNC0("cosa%d: WARNING: start microcode requested with cosa->usage > 1 (%d). Odd things may happen.\n",
			cosa->num, cosa->usage);

	if ((cosa->firmware_status & (COSA_FW_RESET|COSA_FW_DOWNLOAD))
		!= (COSA_FW_RESET|COSA_FW_DOWNLOAD)) {
		FUNC1("%s: download the microcode and/or reset the card first (status %d)\n",
			  cosa->name, cosa->firmware_status);
		return -EPERM;
	}
	cosa->firmware_status &= ~COSA_FW_RESET;
	if ((i=FUNC2(cosa, address)) < 0) {
		FUNC1("cosa%d: start microcode at 0x%04x failed: %d\n",
			  cosa->num, address, i);
		return -EIO;
	}
	FUNC0("cosa%d: starting microcode at 0x%04x\n", cosa->num, address);
	cosa->startaddr = address;
	cosa->firmware_status |= COSA_FW_START;
	return 0;
}