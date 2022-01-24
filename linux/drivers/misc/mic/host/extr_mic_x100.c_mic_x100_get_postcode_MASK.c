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
typedef  int /*<<< orphan*/  u32 ;
struct mic_device {int /*<<< orphan*/  mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIC_X100_POSTCODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC1(struct mic_device *mdev)
{
	return FUNC0(&mdev->mmio, MIC_X100_POSTCODE);
}