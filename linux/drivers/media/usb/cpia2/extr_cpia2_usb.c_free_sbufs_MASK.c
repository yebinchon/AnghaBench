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
struct camera_data {TYPE_1__* sbuf; } ;
struct TYPE_2__ {int /*<<< orphan*/ * data; int /*<<< orphan*/ * urb; } ;

/* Variables and functions */
 int NUM_SBUF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct camera_data *cam)
{
	int i;

	for (i = 0; i < NUM_SBUF; i++) {
		if(cam->sbuf[i].urb) {
			FUNC2(cam->sbuf[i].urb);
			FUNC1(cam->sbuf[i].urb);
			cam->sbuf[i].urb = NULL;
		}
		if(cam->sbuf[i].data) {
			FUNC0(cam->sbuf[i].data);
			cam->sbuf[i].data = NULL;
		}
	}
}