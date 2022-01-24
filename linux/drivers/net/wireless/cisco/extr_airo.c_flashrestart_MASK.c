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
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct airo_info {int /*<<< orphan*/ * fids; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIRO_DEF_MTU ; 
 int /*<<< orphan*/  FLAG_FLASHING ; 
 int /*<<< orphan*/  FLAG_MPI ; 
 int MAX_FIDS ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct airo_info*) ; 
 int FUNC2 (struct airo_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct airo_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct airo_info *ai,struct net_device *dev){
	int    i,status;

	FUNC3(1);			/* Added 12/7/00 */
	FUNC0 (FLAG_FLASHING, &ai->flags);
	if (FUNC4(FLAG_MPI, &ai->flags)) {
		status = FUNC1(ai);
		if (status != SUCCESS)
			return status;
	}
	status = FUNC2(ai, dev->dev_addr, 1);

	if (!FUNC4(FLAG_MPI,&ai->flags))
		for( i = 0; i < MAX_FIDS; i++ ) {
			ai->fids[i] = FUNC5
				( ai, AIRO_DEF_MTU, i >= MAX_FIDS / 2 );
		}

	FUNC3(1);			/* Added 12/7/00 */
	return status;
}