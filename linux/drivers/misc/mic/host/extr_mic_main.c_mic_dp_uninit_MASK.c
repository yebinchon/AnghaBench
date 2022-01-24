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
struct mic_device {int /*<<< orphan*/  dp; int /*<<< orphan*/  dp_dma_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIC_DP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mic_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mic_device *mdev)
{
	FUNC1(mdev, mdev->dp_dma_addr, MIC_DP_SIZE);
	FUNC0(mdev->dp);
}