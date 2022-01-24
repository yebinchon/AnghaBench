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
struct regmap {int dummy; } ;
struct isc_device {int /*<<< orphan*/  v4l2_dev; struct regmap* regmap; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  ISC_CTRLEN ; 
 int /*<<< orphan*/  ISC_CTRLSR ; 
 int ISC_CTRL_UPPRO ; 
 int /*<<< orphan*/  FUNC0 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC4(struct isc_device *isc)
{
	struct regmap *regmap = isc->regmap;
	u32 sr;
	int counter = 100;

	FUNC1(regmap, ISC_CTRLEN, ISC_CTRL_UPPRO);

	FUNC0(regmap, ISC_CTRLSR, &sr);
	while ((sr & ISC_CTRL_UPPRO) && counter--) {
		FUNC2(1000, 2000);
		FUNC0(regmap, ISC_CTRLSR, &sr);
	}

	if (counter < 0) {
		FUNC3(&isc->v4l2_dev, "Time out to update profile\n");
		return -ETIMEDOUT;
	}

	return 0;
}