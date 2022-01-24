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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct rvin_dev {int /*<<< orphan*/  std; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
 int /*<<< orphan*/  dv_timings_cap ; 
 int /*<<< orphan*/  pad ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rvin_dev* FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct rvin_dev*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, v4l2_std_id *a)
{
	struct rvin_dev *vin = FUNC1(file);

	if (FUNC0(FUNC2(vin), pad, dv_timings_cap))
		return -ENOIOCTLCMD;

	*a = vin->std;

	return 0;
}