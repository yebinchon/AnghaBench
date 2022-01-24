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
struct be_mcc_wrb {int dummy; } ;
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 struct be_mcc_wrb* FUNC0 (struct be_adapter*,struct be_mcc_wrb*) ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*) ; 
 int FUNC3 (struct be_adapter*) ; 
 int FUNC4 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_mcc_wrb*,struct be_mcc_wrb*,int) ; 
 scalar_t__ FUNC6 (struct be_adapter*) ; 

__attribute__((used)) static int FUNC7(struct be_adapter *adapter,
			      struct be_mcc_wrb *wrb)
{
	struct be_mcc_wrb *dest_wrb;
	int status;

	status = FUNC1(adapter);
	if (status)
		return status;

	dest_wrb = FUNC0(adapter, wrb);
	if (!dest_wrb) {
		status = -EBUSY;
		goto unlock;
	}

	if (FUNC6(adapter))
		status = FUNC4(adapter);
	else
		status = FUNC3(adapter);

	if (!status)
		FUNC5(wrb, dest_wrb, sizeof(*wrb));

unlock:
	FUNC2(adapter);
	return status;
}