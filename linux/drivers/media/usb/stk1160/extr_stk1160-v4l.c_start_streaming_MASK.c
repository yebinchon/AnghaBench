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
struct stk1160 {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct stk1160*) ; 
 struct stk1160* FUNC1 (struct vb2_queue*) ; 

__attribute__((used)) static int FUNC2(struct vb2_queue *vq, unsigned int count)
{
	struct stk1160 *dev = FUNC1(vq);
	return FUNC0(dev);
}