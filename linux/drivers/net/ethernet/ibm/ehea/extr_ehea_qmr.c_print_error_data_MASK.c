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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 scalar_t__ EHEA_AER_RESTYPE_CQ ; 
 scalar_t__ EHEA_AER_RESTYPE_EQ ; 
 scalar_t__ EHEA_AER_RESTYPE_QP ; 
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int EHEA_PAGESIZE ; 
 int /*<<< orphan*/  ERROR_DATA_LENGTH ; 
 int /*<<< orphan*/  ERROR_DATA_TYPE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,...) ; 

__attribute__((used)) static void FUNC3(u64 *data)
{
	int length;
	u64 type = FUNC0(ERROR_DATA_TYPE, data[2]);
	u64 resource = data[1];

	length = FUNC0(ERROR_DATA_LENGTH, data[0]);

	if (length > EHEA_PAGESIZE)
		length = EHEA_PAGESIZE;

	if (type == EHEA_AER_RESTYPE_QP)
		FUNC2("QP (resource=%llX) state: AER=0x%llX, AERR=0x%llX, port=%llX\n",
		       resource, data[6], data[12], data[22]);
	else if (type == EHEA_AER_RESTYPE_CQ)
		FUNC2("CQ (resource=%llX) state: AER=0x%llX\n",
		       resource, data[6]);
	else if (type == EHEA_AER_RESTYPE_EQ)
		FUNC2("EQ (resource=%llX) state: AER=0x%llX\n",
		       resource, data[6]);

	FUNC1(data, length, "error data");
}