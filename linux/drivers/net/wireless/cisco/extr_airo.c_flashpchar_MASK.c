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
struct airo_info {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EIO ; 
 int FUNC0 (struct airo_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct airo_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SWS0 ; 
 int /*<<< orphan*/  SWS1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct airo_info *ai,int byte,int dwelltime) {
	int echo;
	int waittime;

	byte |= 0x8000;

	if(dwelltime == 0 )
		dwelltime = 200;

	waittime=dwelltime;

	/* Wait for busy bit d15 to go false indicating buffer empty */
	while ((FUNC0 (ai, SWS0) & 0x8000) && waittime > 0) {
		FUNC3 (50);
		waittime -= 50;
	}

	/* timeout for busy clear wait */
	if(waittime <= 0 ){
		FUNC2(ai->dev->name, "flash putchar busywait timeout!");
		return -EBUSY;
	}

	/* Port is clear now write byte and wait for it to echo back */
	do {
		FUNC1(ai,SWS0,byte);
		FUNC3(50);
		dwelltime -= 50;
		echo = FUNC0(ai,SWS1);
	} while (dwelltime >= 0 && echo != byte);

	FUNC1(ai,SWS1,0);

	return (echo == byte) ? 0 : -EIO;
}