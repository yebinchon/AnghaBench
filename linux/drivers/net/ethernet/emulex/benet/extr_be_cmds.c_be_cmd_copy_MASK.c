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
typedef  int /*<<< orphan*/  ulong ;
struct be_mcc_wrb {int embedded; } ;
struct be_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCC_WRB_EMBEDDED_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct be_mcc_wrb*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_mcc_wrb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct be_mcc_wrb*,struct be_mcc_wrb*,int) ; 
 scalar_t__ FUNC4 (struct be_adapter*) ; 
 struct be_mcc_wrb* FUNC5 (struct be_adapter*) ; 
 struct be_mcc_wrb* FUNC6 (struct be_adapter*) ; 

__attribute__((used)) static struct be_mcc_wrb *FUNC7(struct be_adapter *adapter,
				      struct be_mcc_wrb *wrb)
{
	struct be_mcc_wrb *dest_wrb;

	if (FUNC4(adapter)) {
		dest_wrb = FUNC6(adapter);
		if (!dest_wrb)
			return NULL;
	} else {
		dest_wrb = FUNC5(adapter);
	}

	FUNC3(dest_wrb, wrb, sizeof(*wrb));
	if (wrb->embedded & FUNC0(MCC_WRB_EMBEDDED_MASK))
		FUNC2(dest_wrb, (ulong) FUNC1(wrb));

	return dest_wrb;
}