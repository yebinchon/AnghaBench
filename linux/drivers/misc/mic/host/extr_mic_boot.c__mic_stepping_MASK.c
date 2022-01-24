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
struct mic_device {int stepping; } ;
struct cosm_device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  MIC_A0_STEP 131 
#define  MIC_B0_STEP 130 
#define  MIC_B1_STEP 129 
#define  MIC_C0_STEP 128 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct mic_device* FUNC0 (struct cosm_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static ssize_t FUNC2(struct cosm_device *cdev, char *buf)
{
	struct mic_device *mdev = FUNC0(cdev);
	const char *string = "??";

	switch (mdev->stepping) {
	case MIC_A0_STEP:
		string = "A0";
		break;
	case MIC_B0_STEP:
		string = "B0";
		break;
	case MIC_B1_STEP:
		string = "B1";
		break;
	case MIC_C0_STEP:
		string = "C0";
		break;
	default:
		break;
	}
	return FUNC1(buf, PAGE_SIZE, "%s\n", string);
}