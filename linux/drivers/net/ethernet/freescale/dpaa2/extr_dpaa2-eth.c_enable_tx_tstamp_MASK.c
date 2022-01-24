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
typedef  int u32 ;
struct dpaa2_fd {int dummy; } ;
struct dpaa2_faead {int /*<<< orphan*/  ctrl; } ;

/* Variables and functions */
 int DPAA2_FAEAD_A2V ; 
 int DPAA2_FAEAD_UPD ; 
 int DPAA2_FAEAD_UPDV ; 
 int DPAA2_FD_CTRL_ASAL ; 
 int DPAA2_FD_FRC_FAEADV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dpaa2_fd*) ; 
 int FUNC2 (struct dpaa2_fd*) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa2_fd*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dpaa2_fd*,int) ; 
 struct dpaa2_faead* FUNC5 (void*,int) ; 

__attribute__((used)) static void FUNC6(struct dpaa2_fd *fd, void *buf_start)
{
	struct dpaa2_faead *faead;
	u32 ctrl, frc;

	/* Mark the egress frame annotation area as valid */
	frc = FUNC2(fd);
	FUNC4(fd, frc | DPAA2_FD_FRC_FAEADV);

	/* Set hardware annotation size */
	ctrl = FUNC1(fd);
	FUNC3(fd, ctrl | DPAA2_FD_CTRL_ASAL);

	/* enable UPD (update prepanded data) bit in FAEAD field of
	 * hardware frame annotation area
	 */
	ctrl = DPAA2_FAEAD_A2V | DPAA2_FAEAD_UPDV | DPAA2_FAEAD_UPD;
	faead = FUNC5(buf_start, true);
	faead->ctrl = FUNC0(ctrl);
}