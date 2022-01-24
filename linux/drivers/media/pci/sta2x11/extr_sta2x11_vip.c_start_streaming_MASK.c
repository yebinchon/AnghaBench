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
struct vb2_queue {int dummy; } ;
struct sta2x11_vip {int /*<<< orphan*/  active; int /*<<< orphan*/  slock; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVP_ITM ; 
 int DVP_IT_VSB ; 
 int DVP_IT_VST ; 
 int /*<<< orphan*/  FUNC0 (struct sta2x11_vip*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sta2x11_vip*,int /*<<< orphan*/ ) ; 
 struct sta2x11_vip* FUNC4 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC5(struct vb2_queue *vq, unsigned int count)
{
	struct sta2x11_vip *vip = FUNC4(vq);

	FUNC1(&vip->slock);
	/* Enable interrupt VSYNC Top and Bottom*/
	FUNC0(vip, DVP_ITM, DVP_IT_VSB | DVP_IT_VST);
	FUNC2(&vip->slock);

	if (count)
		FUNC3(vip, vip->active);

	return 0;
}