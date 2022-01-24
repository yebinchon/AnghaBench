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
struct mei_hbm_cl_cmd {int dummy; } ;
struct mei_device {int dummy; } ;
struct mei_cl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mei_cl*) ; 
 struct mei_cl* FUNC1 (struct mei_device*,struct mei_hbm_cl_cmd*) ; 

__attribute__((used)) static void FUNC2(struct mei_device *dev,
			      struct mei_hbm_cl_cmd *cmd)
{
	struct mei_cl *cl;

	cl = FUNC1(dev, cmd);
	if (cl)
		FUNC0(cl);
}