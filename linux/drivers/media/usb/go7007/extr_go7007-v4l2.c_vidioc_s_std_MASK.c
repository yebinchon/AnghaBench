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
struct go7007 {int /*<<< orphan*/  std; int /*<<< orphan*/  vidq; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct go7007*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct go7007* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, v4l2_std_id std)
{
	struct go7007 *go = FUNC2(file);

	if (FUNC1(&go->vidq))
		return -EBUSY;

	go->std = std;

	return FUNC0(go);
}