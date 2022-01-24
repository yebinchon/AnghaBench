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
struct vpfe_device {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 struct vpfe_device* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct vpfe_device*,char*,unsigned int) ; 
 int FUNC2 (struct vpfe_device*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv, unsigned int index)
{
	struct vpfe_device *vpfe = FUNC0(file);

	FUNC1(2, vpfe,
		"vpfe_s_input: index: %d\n", index);

	return FUNC2(vpfe, index);
}