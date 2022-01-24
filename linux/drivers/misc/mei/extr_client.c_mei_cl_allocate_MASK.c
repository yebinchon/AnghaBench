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
struct mei_device {int dummy; } ;
struct mei_cl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mei_cl* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_cl*,struct mei_device*) ; 

struct mei_cl *FUNC2(struct mei_device *dev)
{
	struct mei_cl *cl;

	cl = FUNC0(sizeof(struct mei_cl), GFP_KERNEL);
	if (!cl)
		return NULL;

	FUNC1(cl, dev);

	return cl;
}