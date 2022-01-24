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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 unsigned long SLRAM_BLK_SZ ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (unsigned long,char*) ; 
 unsigned long FUNC3 (char*,unsigned long,unsigned long) ; 
 unsigned long FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(char *devname, char *szstart, char *szlength)
{
	char *buffer;
	unsigned long devstart;
	unsigned long devlength;

	if ((!devname) || (!szstart) || (!szlength)) {
		FUNC5();
		return(-EINVAL);
	}

	devstart = FUNC4(szstart, &buffer, 0);
	devstart = FUNC2(devstart, buffer);

	if (*(szlength) != '+') {
		devlength = FUNC4(szlength, &buffer, 0);
		devlength = FUNC2(devlength, buffer);
		if (devlength < devstart)
			goto err_out;

		devlength -= devstart;
	} else {
		devlength = FUNC4(szlength + 1, &buffer, 0);
		devlength = FUNC2(devlength, buffer);
	}
	FUNC1("slram: devname=%s, devstart=0x%lx, devlength=0x%lx\n",
			devname, devstart, devlength);
	if (devlength % SLRAM_BLK_SZ != 0)
		goto err_out;

	if ((devstart = FUNC3(devname, devstart, devlength))){
		FUNC5();
		return((int)devstart);
	}
	return(0);

err_out:
	FUNC0("slram: Illegal length parameter.\n");
	return(-EINVAL);
}