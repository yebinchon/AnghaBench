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
struct ngene_ci {int /*<<< orphan*/ * en; } ;
struct ngene {TYPE_1__* channel; struct ngene_ci ci; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** i2c_client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ngene *dev)
{
	struct ngene_ci *ci = &dev->ci;

	FUNC0(ci->en);

	FUNC1(dev->channel[0].i2c_client[0]);
	dev->channel[0].i2c_client[0] = NULL;
	ci->en = NULL;
}