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
typedef  int u8 ;

/* Variables and functions */
 int EINVAL ; 
#define  ENA_ADMIN_BAD_OPCODE 134 
#define  ENA_ADMIN_ILLEGAL_PARAMETER 133 
#define  ENA_ADMIN_MALFORMED_REQUEST 132 
#define  ENA_ADMIN_RESOURCE_ALLOCATION_FAILURE 131 
#define  ENA_ADMIN_SUCCESS 130 
#define  ENA_ADMIN_UNKNOWN_ERROR 129 
#define  ENA_ADMIN_UNSUPPORTED_OPCODE 128 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(u8 comp_status)
{
	if (FUNC1(comp_status != 0))
		FUNC0("admin command failed[%u]\n", comp_status);

	if (FUNC1(comp_status > ENA_ADMIN_UNKNOWN_ERROR))
		return -EINVAL;

	switch (comp_status) {
	case ENA_ADMIN_SUCCESS:
		return 0;
	case ENA_ADMIN_RESOURCE_ALLOCATION_FAILURE:
		return -ENOMEM;
	case ENA_ADMIN_UNSUPPORTED_OPCODE:
		return -EOPNOTSUPP;
	case ENA_ADMIN_BAD_OPCODE:
	case ENA_ADMIN_MALFORMED_REQUEST:
	case ENA_ADMIN_ILLEGAL_PARAMETER:
	case ENA_ADMIN_UNKNOWN_ERROR:
		return -EINVAL;
	}

	return 0;
}