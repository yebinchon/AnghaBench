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
struct pxa_camera_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_Y ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_camera_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(void *data)
{
	struct pxa_camera_dev *pcdev = data;

	FUNC0(pcdev, DMA_Y);
}