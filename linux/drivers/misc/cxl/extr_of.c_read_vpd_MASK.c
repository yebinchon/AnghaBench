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
typedef  int /*<<< orphan*/  vpd ;
struct cxl_afu {int dummy; } ;
struct cxl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct cxl*,char*,size_t) ; 
 int FUNC2 (struct cxl_afu*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC4(struct cxl *adapter, struct cxl_afu *afu)
{
	char vpd[256];
	int rc;
	size_t len = sizeof(vpd);

	FUNC3(vpd, 0, len);

	if (adapter)
		rc = FUNC1(adapter, vpd, len);
	else
		rc = FUNC2(afu, vpd, len);

	if (rc > 0) {
		FUNC0(vpd, rc);
		rc = 0;
	}
	return rc;
}