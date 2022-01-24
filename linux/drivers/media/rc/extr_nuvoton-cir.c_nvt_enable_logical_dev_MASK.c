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
typedef  int /*<<< orphan*/  u8 ;
struct nvt_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_LOGICAL_DEV_EN ; 
 int /*<<< orphan*/  LOGICAL_DEV_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct nvt_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvt_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvt_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct nvt_dev *nvt, u8 ldev)
{
	FUNC2(nvt);
	FUNC3(nvt, ldev);
	FUNC0(nvt, LOGICAL_DEV_ENABLE, CR_LOGICAL_DEV_EN);
	FUNC1(nvt);
}