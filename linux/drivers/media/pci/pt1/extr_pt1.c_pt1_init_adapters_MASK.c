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
struct pt1_adapter {int index; } ;
struct pt1 {struct pt1_adapter** adaps; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pt1_adapter*) ; 
 int PT1_NR_ADAPS ; 
 int FUNC1 (struct pt1_adapter*) ; 
 struct pt1_adapter* FUNC2 (struct pt1*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt1_adapter*) ; 

__attribute__((used)) static int FUNC4(struct pt1 *pt1)
{
	int i;
	struct pt1_adapter *adap;
	int ret;

	for (i = 0; i < PT1_NR_ADAPS; i++) {
		adap = FUNC2(pt1);
		if (FUNC0(adap)) {
			ret = FUNC1(adap);
			goto err;
		}

		adap->index = i;
		pt1->adaps[i] = adap;
	}
	return 0;

err:
	while (i--)
		FUNC3(pt1->adaps[i]);

	return ret;
}