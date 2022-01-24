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
struct airo_info {int* flash; scalar_t__ pciaux; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUXDATA ; 
 int /*<<< orphan*/  AUXOFF ; 
 int /*<<< orphan*/  AUXPAGE ; 
 int /*<<< orphan*/  FLAG_MPI ; 
 int FLASHSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct airo_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SWS0 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct airo_info *ai){
	int            nwords;

	/* Write stuff */
	if (FUNC2(FLAG_MPI,&ai->flags))
		FUNC1(ai->pciaux + 0x8000, ai->flash, FLASHSIZE);
	else {
		FUNC0(ai,AUXPAGE,0x100);
		FUNC0(ai,AUXOFF,0);

		for(nwords=0;nwords != FLASHSIZE / 2;nwords++){
			FUNC0(ai,AUXDATA,ai->flash[nwords] & 0xffff);
		}
	}
	FUNC0(ai,SWS0,0x8000);

	return 0;
}