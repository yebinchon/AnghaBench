#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  void* u16 ;
struct TYPE_2__ {int spec_major; scalar_t__ spec_minor; int /*<<< orphan*/  type; int /*<<< orphan*/  number; int /*<<< orphan*/  major; int /*<<< orphan*/  minor; void* buildnr; } ;
struct kempld_device_data {void* feature_mask; TYPE_1__ info; } ;

/* Variables and functions */
 int /*<<< orphan*/  KEMPLD_BUILDNR ; 
 int /*<<< orphan*/  KEMPLD_FEATURE ; 
 int /*<<< orphan*/  KEMPLD_SPEC ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  KEMPLD_VERSION ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct kempld_device_data*) ; 
 void* FUNC7 (struct kempld_device_data*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct kempld_device_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kempld_device_data*) ; 

__attribute__((used)) static int FUNC10(struct kempld_device_data *pld)
{
	u16 version;
	u8 spec;

	FUNC6(pld);

	version = FUNC7(pld, KEMPLD_VERSION);
	spec = FUNC8(pld, KEMPLD_SPEC);
	pld->info.buildnr = FUNC7(pld, KEMPLD_BUILDNR);

	pld->info.minor = FUNC3(version);
	pld->info.major = FUNC2(version);
	pld->info.number = FUNC4(version);
	pld->info.type = FUNC5(version);

	if (spec == 0xff) {
		pld->info.spec_minor = 0;
		pld->info.spec_major = 1;
	} else {
		pld->info.spec_minor = FUNC1(spec);
		pld->info.spec_major = FUNC0(spec);
	}

	if (pld->info.spec_major > 0)
		pld->feature_mask = FUNC7(pld, KEMPLD_FEATURE);
	else
		pld->feature_mask = 0;

	FUNC9(pld);

	return 0;
}