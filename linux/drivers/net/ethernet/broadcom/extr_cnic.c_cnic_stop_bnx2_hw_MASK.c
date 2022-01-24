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
struct cnic_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ BNX2_COM_SCRATCH ; 
 scalar_t__ BNX2_CP_SCRATCH ; 
 int /*<<< orphan*/  KCQ_CID ; 
 int /*<<< orphan*/  KWQ_CID ; 
 int /*<<< orphan*/  FUNC0 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct cnic_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cnic_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cnic_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct cnic_dev *dev)
{
	FUNC0(dev);

	FUNC4(dev, BNX2_CP_SCRATCH + 0x20, 0);
	FUNC4(dev, BNX2_COM_SCRATCH + 0x20, 0);

	FUNC3(dev, KWQ_CID);
	FUNC3(dev, KCQ_CID);

	FUNC5(dev, 0);
	FUNC1(dev);

	FUNC2(dev);
}