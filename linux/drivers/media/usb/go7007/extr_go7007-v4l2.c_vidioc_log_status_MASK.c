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
struct go7007 {int /*<<< orphan*/  v4l2_dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  log_status ; 
 int /*<<< orphan*/  FUNC1 (struct file*,void*) ; 
 struct go7007* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv)
{
	struct go7007 *go = FUNC2(file);

	FUNC1(file, priv);
	return FUNC0(&go->v4l2_dev, core, log_status);
}