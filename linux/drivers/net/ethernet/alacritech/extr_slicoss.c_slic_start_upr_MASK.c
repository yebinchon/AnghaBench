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
typedef  int /*<<< orphan*/  u32 ;
struct slic_upr {scalar_t__ type; int /*<<< orphan*/  paddr; } ;
struct slic_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLIC_REG_LSTAT ; 
 int /*<<< orphan*/  SLIC_REG_RCONFIG ; 
 scalar_t__ SLIC_UPR_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct slic_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct slic_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct slic_device *sdev, struct slic_upr *upr)
{
	u32 reg;

	reg = (upr->type == SLIC_UPR_CONFIG) ? SLIC_REG_RCONFIG :
					       SLIC_REG_LSTAT;
	FUNC2(sdev, reg, FUNC0(upr->paddr));
	FUNC1(sdev);
}