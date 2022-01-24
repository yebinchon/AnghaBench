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
typedef  int u16 ;
struct ath10k {int /*<<< orphan*/  dev; } ;
struct acpi_buffer {int /*<<< orphan*/  pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_string ;
typedef  char* acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 int COUNTRY_ERD_FLAG ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 scalar_t__ WRD_METHOD ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC5 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ath10k *ar, u16 *rd)
{
	acpi_handle root_handle;
	acpi_handle handle;
	struct acpi_buffer wrdd = {ACPI_ALLOCATE_BUFFER, NULL};
	acpi_status status;
	u32 alpha2_code;
	char alpha2[3];

	root_handle = FUNC1(ar->dev);
	if (!root_handle)
		return -EOPNOTSUPP;

	status = FUNC3(root_handle, (acpi_string)WRD_METHOD, &handle);
	if (FUNC0(status)) {
		FUNC4(ar, ATH10K_DBG_BOOT,
			   "failed to get wrd method %d\n", status);
		return -EIO;
	}

	status = FUNC2(handle, NULL, NULL, &wrdd);
	if (FUNC0(status)) {
		FUNC4(ar, ATH10K_DBG_BOOT,
			   "failed to call wrdc %d\n", status);
		return -EIO;
	}

	alpha2_code = FUNC5(ar, wrdd.pointer);
	FUNC7(wrdd.pointer);
	if (!alpha2_code)
		return -EIO;

	alpha2[0] = (alpha2_code >> 8) & 0xff;
	alpha2[1] = (alpha2_code >> 0) & 0xff;
	alpha2[2] = '\0';

	FUNC4(ar, ATH10K_DBG_BOOT,
		   "regulatory hint from WRDD (alpha2-code): %s\n", alpha2);

	*rd = FUNC6(alpha2);
	if (*rd == 0xffff)
		return -EIO;

	*rd |= COUNTRY_ERD_FLAG;
	return 0;
}