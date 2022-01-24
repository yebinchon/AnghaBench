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
struct mcam_camera {int /*<<< orphan*/  dev_lock; } ;

/* Variables and functions */
 int GCSR_CCIC_EN ; 
 int GCSR_MRC ; 
 int GCSR_MRS ; 
 int GCSR_SRC ; 
 int GCSR_SRS ; 
 int /*<<< orphan*/  GIMSK_CCIC_EN ; 
 int REG_GL_CSR ; 
 int /*<<< orphan*/  REG_GL_IMASK ; 
 int REG_IRQMASK ; 
 int /*<<< orphan*/  FUNC0 (struct mcam_camera*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mcam_camera*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct mcam_camera *mcam)
{
	unsigned long flags;

	FUNC3(&mcam->dev_lock, flags);
	/*
	 * Added magic to bring up the hardware on the B-Test board
	 */
	FUNC1(mcam, 0x3038, 0x8);
	FUNC1(mcam, 0x315c, 0x80008);
	/*
	 * Go through the dance needed to wake the device up.
	 * Note that these registers are global and shared
	 * with the NAND and SD devices.  Interaction between the
	 * three still needs to be examined.
	 */
	FUNC1(mcam, REG_GL_CSR, GCSR_SRS|GCSR_MRS); /* Needed? */
	FUNC1(mcam, REG_GL_CSR, GCSR_SRC|GCSR_MRC);
	FUNC1(mcam, REG_GL_CSR, GCSR_SRC|GCSR_MRS);
	/*
	 * Here we must wait a bit for the controller to come around.
	 */
	FUNC4(&mcam->dev_lock, flags);
	FUNC2(5);
	FUNC3(&mcam->dev_lock, flags);

	FUNC1(mcam, REG_GL_CSR, GCSR_CCIC_EN|GCSR_SRC|GCSR_MRC);
	FUNC0(mcam, REG_GL_IMASK, GIMSK_CCIC_EN);
	/*
	 * Mask all interrupts.
	 */
	FUNC1(mcam, REG_IRQMASK, 0);
	FUNC4(&mcam->dev_lock, flags);
}